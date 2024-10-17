<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Epmnzava\Crdb\Crdb;
use Omnipay\Common\CreditCard;
use Omnipay\Omnipay;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Omnipay\Common\Message\RedirectResponseInterface;
use Srmklive\PayPal\Facades\PayPal;
use Stripe\Stripe;


class PaymentController extends Controller
{
    public function makePayment(Order $order)
    {
        $gateway = $this->createPaypalGateway();

        $data = [];
        $data['items'] = Session::get('products');
        $data['invoice_id'] = $order->id;
        $data['invoice_description'] = "Order #{$data['invoice_id']} Invoice";
        $data['description'] = "Order payment";
        $data['return_url'] = url('/payment/success');
        $data['cancel_url'] = url('/cart');
        $data['amount'] = Session::get('total_price');
        $data['currency'] = env('PAYMENT_CURRENCY');


        try {
            $response = $gateway->purchase($data)->send();

            if ($response->isRedirect()) {
                $response->redirect();
            } else {
                $response->getMessage();
            }
        } catch (\Throwable $error) {
            $error->getMessage();
        }

        //give a discount of 10% of the order amount
        //$data['shipping_discount'] = round((10 / 100) * $total, 2);

    }

    public function successPayment(Request $request)
    {
        $orderData = [];

        if ($request->input('paymentId') && $request->input('PayerID')) {
            $gateway = $this->createPaypalGateway();
            $orderData = [
                'payer_id' => $request->input('PayerID'),
                'transactionReference' => $request->input('paymentId'),
            ];
            $transaction = $gateway->completePurchase($orderData);
            $response = $transaction->send();

            if ($response->isSuccessful()) {
                $orderData = $response->getData();

                $order = Order::find(Session::get('orderId'));
                $order->update([
                    'payment_method' => "PayPal",
                    'is_paid' => true,
                    'paid_at' => Carbon::now()->toDateTimeString(),
                    'status' => "Delivering",
                ]);

                Session::forget('orderId');
                Session::forget('products');
                Session::forget('total_quantity');
                Session::forget('total_price');
            } else {
                return $response->getMessage();
            }
        } else {
            return "Payment is declined";
        }

        return view('thankyou', ['id' => $orderData['cart']]);
    }


    function createPaypalGateway()
    {
        $gateway = Omnipay::create('PayPal_Rest');

        $config = [
            'clientId' => env('PAYPAL_SANDBOX_CLIENT_ID', ''),
            'secret' => env('PAYPAL_SANDBOX_CLIENT_SECRET', ''),
            'token' => env('PAYPAL_SANDBOX_ACCESS_TOKEN'),
            'testMode' => true,
        ];
        return $gateway->initialize($config);
    }

    function createStripeGateway()
    {
        $gateway = Omnipay::create('Stripe');

        $config = [
            "apiKey" => env('STRIPE_APIKEY'),
            "stripeVersion" => env('STRIPE_VERSION')
        ];

        return $gateway->initialize($config);
    }

    public function stripePayment(Request $request, Order $order)
    {

        $stripe = new \Stripe\StripeClient(env('STRIPE_APIKEY'));
        //dd(Session::get('products'));
        $request->session()->put('line_items.0.price_data.unit_amount', 100 * round(Session::has('full_price') ?
            Session::get('full_price') : Session::get('total_price'), 2));

        $response =  $stripe->checkout->sessions->create([
            'success_url' => url('/payment/success'),
            'cancel_url' => url('/cart'),
            'payment_method_types' => ['link', 'card'],
            'line_items' => [
                '0' => Session::get('line_items')
            ],
            // 'line_items' =>  [
            //     [
            //         'price_data'  => [
            //             'product_data' => [
            //                 'name' => "Rose1",
            //             ],
            //             'unit_amount'  => 100 * Session::get('total_price'),
            //             'currency'     => 'USD',
            //         ],
            //         'quantity'    => 1
            //     ],
            // ],

            'mode' => 'payment',
            'allow_promotion_codes' => false
        ]);

        return redirect($response['url']);
    }
    // public function stripePayment2(Request $request, Order $order)
    // {
    //     $gateway = $this->createStripeGateway();

    //     $incomingFields = $request->validate([
    //         'number' => 'required',
    //     ])

    //     $card = [
    //         'number' => '4242424242424242',
    //         'name' => 'Zhang San',
    //         'exp_month' => '12',
    //         'exp_year' => '34',
    //         'cvv' => '567',
    //     ];

    //     $customer = [
    //         'id' => 1,
    //         'email' => 'test@example.com',
    //         'name' => 'Zhang San',
    //         // 'address' => [
    //         //     'line1' => '6aaa',
    //         //     'city' => 'aaa',
    //         //     'state' => 'aaa',
    //         //     'postal_code' => '12345',
    //         // ],
    //         // 'phone' => '02467895456',
    //         // 'metadata' => [
    //         //     'user_id' => 1,
    //         // ],

    //     ];

    //     $creditCard = new CreditCard($card);

    //     $data['invoice_id'] = $order->id;
    //     $data['description'] =
    //         "Order #{$data['invoice_id']} Invoice";
    //     $data['return_url'] = url('/payment/success');
    //     $data['cancel_url'] = url('/cart');
    //     $data['country'] = "United States";
    //     $data['amount'] = Session::get('total_price');
    //     $data['currency'] = env('PAYMENT_CURRENCY');
    //     $data['token'] = $creditCard;
    //     $data['source'] = $customer;
    //     $data['level3'] = [
    //         'line_items' => Session::get('products'),
    //         'merchant_reference' => "A012345",
    //     ];







    //     try {
    //         $response = $gateway->purchase($data)->send();
    //         dd($response);

    //         if ($response->isRedirect()) {
    //             $response->redirect();
    //         } else {
    //             $response->getMessage();
    //         }
    //     } catch (\Throwable $error) {
    //         $error->getMessage();
    //     }
    // }
}
