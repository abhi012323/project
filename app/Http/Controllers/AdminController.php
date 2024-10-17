<?php

namespace App\Http\Controllers;

use App\Models\Address;
use App\Models\Banner;
use App\Models\User;
use App\Models\Color;
use App\Models\Discount;
use App\Models\Event;
use App\Models\Faq;
use App\Models\Font;
use App\Models\Highlight;
use App\Models\Image;
use App\Models\Ink;
use App\Models\Material;
use App\Models\Order;
use App\Models\Postcode;
use App\Models\Product;
use App\Models\Review;
use App\Models\Shape;
use App\Models\Size;
use App\Models\Type;
use Faker\Core\File;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\File as FacadesFile;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\View;
use Intervention\Image\Decoders\Base64ImageDecoder;
use Intervention\Image\Decoders\DataUriImageDecoder;
use Intervention\Image\Decoders\FilePathImageDecoder;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class AdminController extends Controller
{
    public function xshowColor()
    {
        return view('create-color');
    }

    public function showAdmin()
    {
        return view('admin-general');
    }

    public function showUsers(User $user)
    {
        $allUser = $user->all();
        return view('admin-users', ['users' => $allUser, 'user' => $user]);
    }

    public function showTypes(Type $type, User $user)
    {
        $allTypes = $type->all();
        return view('admin-types', ['types' => $allTypes]);
    }

    public function editType(Request $request, Type $type)
    {
        $request->validate([
            'name' => 'required'
        ]);
        $newType = Type::find($type->id);
        $newType->name = $request['name'];
        $newType->save();
    }

    public function editShape(Request $request, Shape $shape)
    {
        $request->validate([
            'name' => 'required'
        ]);
        $new = Shape::find($shape->id);
        $new->name = $request['name'];
        $new->save();
    }

    public function editSize(Request $request, Size $size)
    {
        $request->validate([
            'name' => 'required'
        ]);
        $new = Size::find($size->id);
        $new->name = $request['name'];
        $new->save();
    }

    public function editMaterial(Request $request, Material $material)
    {
        $request->validate([
            'name' => 'required'
        ]);
        $new = Material::find($material->id);
        $new->name = $request['name'];
        $new->save();
    }

    public function editEvent(Request $request, Event $event)
    {
        $incomingField = $request->validate([
            'name' => 'required',
            'event_group' => 'required',
            'image' => 'required'
        ]);

        $manager = new ImageManager(new Driver());

        $image = $incomingField['image'];

        $filename = $incomingField['name'] . '.jpg';

        $imageData = $manager->read($image)->encode();
        Storage::put('/public/events/' . $filename, $imageData);

        $new = Event::find($event->id);
        $new->name = $request['name'];
        $new->event_group = $request['event_group'];
        $new->image = $filename;
        $new->save();
        return redirect('/account/admin/events');
    }

    public function editCost(Request $request, Postcode $postcode)
    {
        $incomingFields =  $request->validate([
            'standard' => 'required',
            'express' => 'required'
        ]);

        $new = Postcode::find($postcode->id);
        $new->update($incomingFields);
        return back();
    }

    public function editColor(Request $request, Color $color)
    {
        $incomingField = $request->validate([
            'name' => 'required',
            'image' => 'required'
        ]);

        $manager = new ImageManager(new Driver());

        $image = $incomingField['image'];
        $filename = $incomingField['name'] . '.jpg';
        $imageData = $manager->read($image)->encode();
        Storage::put('/public/color/' . $filename, $imageData);

        $color = Color::find($color->id);
        $color->update(['name' => $incomingField['name'], 'image' => $filename]);
        return redirect('/account/admin/colors');
    }

    public function editInk(Request $request, Ink $ink)
    {
        $incomingField = $request->validate([
            'name' => 'required',
            'color' => 'required'
        ]);

        $ink = Ink::find($ink->id);
        $ink->update($incomingField);
        return redirect('/account/admin/inks');
    }

    public function editFont(Request $request, Font $font)
    {
        $incomingField = $request->validate([
            'name' => 'required',
            'font' => 'required'
        ]);

        $filename = $incomingField['name'] . '.ttf';
        $request->file('font')->storeAs(
            '/public/fonts',
            $filename
        );
        $incomingField['font'] = $filename;


        $font = Font::find($font->id);
        $font->update($incomingField);
        return redirect('/account/admin/fonts');
    }

    public function editReview(Request $request, Review $review)
    {
        $incomingField = $request->validate([
            'buyer_name' => 'required',
            'buyer_title' => 'required',
            'comment' => 'required',
        ]);

        if ($request['image'] != null) {
            $manager = new ImageManager(new Driver());
            $incomingField['image'] = $request['image'];
            $image = $incomingField['image'];
            $filename = $incomingField['buyer_name'] . '.jpg';
            $imageData = $manager->read($image)->encode();
            Storage::put('/public/reviews/' . $filename, $imageData);

            $incomingField['image'] = $filename;
        }

        $review = Review::find($review->id);
        $review->update($incomingField);
        return redirect('/custom/reviews');
    }

    public function editFeature(Request $request, Banner $banner)
    {
        $incomingField = $request->validate([
            'type' => 'required',
            'content' => 'required',
        ]);

        if ($request['type'] == "Feature Image") {
            $manager = new ImageManager(new Driver());

            $filename = $request->file('content')->getClientOriginalName();
            $imageData = $manager->read($incomingField['content'])->encode();
            Storage::put('/public/features/' . $filename, $imageData);

            $incomingField['content'] = $filename;
        }

        $banner = Banner::find($banner->id);
        $banner->update($incomingField);
        return redirect('/custom/features');
    }

    public function editHighlight(Request $request, Highlight $highlight)
    {
        $incomingField = $request->validate([
            'name' => 'required',
            'content' => 'required',
            'image' => 'nullable'
        ]);

        if ($request['image'] != null) {
            $manager = new ImageManager(new Driver());
            $incomingField['image'] = $request['image'];
            $image = $incomingField['image'];
            $filename = $request->file('image')->getClientOriginalName();
            $imageData = $manager->read($image)->encode();
            Storage::put('/public/highlights/' . $filename, $imageData);

            $incomingField['image'] = $filename;
        }

        $highlight = Highlight::find($highlight->id);
        $highlight->update($incomingField);
        return redirect('/custom/highlights');
    }

    public function editFaq(Request $request, Faq $faq)
    {
        $incomingField = $request->validate([
            'question' => 'required',
            'answer' => 'required'
        ]);

        $faq = Faq::find($faq->id);
        $faq->update($incomingField);
        return redirect('/custom/faqs');
    }

    public function editDiscount(Request $request, Discount $discount)
    {
        $incomingField = $request->validate([
            'voucher' => 'required',
            'amount' => 'required'
        ]);

        $discount = Discount::find($discount->id);
        $discount->update($incomingField);
        return redirect('/custom/discounts');
    }

    public function editHomeBanner(Request $request, Banner $banner)
    {
        $incomingField = $request->validate([
            'image' => 'required'
        ]);

        $manager = new ImageManager(new Driver());

        $image = $incomingField['image'];
        $filename = "home-banner.webp";
        $imageData = $manager->read($image)->encode();
        Storage::put('/public/banners/' . $filename, $imageData);

        return redirect('/account/admin');
    }

    public function createType(Request $request, Type $type)
    {
        $incomingField = $request->validate([
            'name' => 'required'
        ]);

        Type::updateOrCreate($incomingField);
        return back();
    }

    public function createShape(Request $request, Shape $shape)
    {
        $incomingField = $request->validate([
            'name' => 'required'
        ]);

        Shape::updateOrCreate($incomingField);
        return back();
    }

    public function createSize(Request $request, Size $size)
    {
        $incomingField = $request->validate([
            'name' => 'required'
        ]);

        Size::updateOrCreate($incomingField);
        return back();
    }

    public function createMaterial(Request $request, Material $material)
    {
        $incomingField = $request->validate([
            'name' => 'required'
        ]);

        Material::updateOrCreate($incomingField);
        return back();
    }

    public function showCreateEvent()
    {
        return view('create-event');
    }

    public function showEditEvent(Event $event)
    {
        $event = Event::find($event->id);
        return view('edit-event', ['event' => $event]);
    }

    public function createEvent(Request $request, Event $event)
    {
        $incomingField = $request->validate([
            'name' => 'required',
            'event_group' => 'required',
            'image' => 'required'
        ]);

        $manager = new ImageManager(new Driver());

        $filename = $incomingField['name'] . '.jpg';
        $imageData = $manager->read($incomingField['image'])->encode();
        Storage::put('/public/events/' . $filename, $imageData);

        $incomingField['image'] = $filename;

        Event::updateOrCreate($incomingField);
        return redirect('/account/admin/events');
    }

    public function createColor(Request $request, Color $color)
    {
        $incomingField = $request->validate([
            'name' => 'required',
            'image' => 'required'
        ]);

        $manager = new ImageManager(new Driver());

        $filename = $incomingField['name'] . '.jpg';
        $imageData = $manager->read($incomingField['image'])->encode();
        Storage::put('/public/color/' . $filename, $imageData);


        Color::create(['name' => $incomingField['name'], 'image' => $filename]);
        return redirect('/account/admin/colors');
    }

    public function createInk(Request $request, Ink $ink)
    {
        $incomingField = $request->validate([
            'name' => 'required',
            'color' => 'required'
        ]);

        Ink::create($incomingField);
        return redirect('/account/admin/inks');
    }

    public function createFont(Request $request, Font $font)
    {
        $incomingField = $request->validate([
            'name' => 'required',
            'font' => 'required'
        ]);

        $filename = $incomingField['name'] . '.ttf';
        $request->file('font')->storeAs(
            '/public/fonts',
            $filename
        );
        $incomingField['font'] = $filename;


        Font::create($incomingField);
        return redirect('/account/admin/fonts');
    }

    public function createReview(Request $request, Review $review)
    {

        $incomingField = $request->validate([
            'buyer_name' => 'required',
            'buyer_title' => 'required',
            'comment' => 'required',
            'image' => 'nullable'
        ]);



        if ($request['image'] != null) {
            $manager = new ImageManager(new Driver());

            $filename = $incomingField['buyer_name'] . '.jpg';
            $imageData = $manager->read($incomingField['image'])->encode();
            Storage::put('/public/reviews/' . $filename, $imageData);

            $incomingField['image'] = $filename;
        } else {
            $incomingField['image'] = "fallback.png";
        }

        Review::create($incomingField);
        return redirect('/custom/reviews');
    }

    public function createFeature(Request $request, Banner $banner)
    {
        $incomingField = $request->validate([
            'type' => 'required',
            'content' => 'required',
        ]);

        if ($request['type'] == "Feature Image") {
            $manager = new ImageManager(new Driver());

            $filename = $request->file('content')->getClientOriginalName();
            $imageData = $manager->read($incomingField['content'])->encode();
            Storage::put('/public/features/' . $filename, $imageData);

            $incomingField['content'] = $filename;
        }

        Banner::create($incomingField);
        return redirect('/custom/features');
    }

    public function iconGenerate(Request $request)
    {

        $incomingField = $request->validate([
            'image' => 'required'
        ]);



        $manager = new ImageManager(new Driver());

        $list = [
            20,
            27,
            29,
            36,
            40,
            48,
            58,
            60,
            72,
            76,
            80,
            81,
            87,
            96,
            108,
            120,
            144,
            152,
            162,
            167,
            180,
            192,
            216,
            324,
            432,
            1024
        ];

        for ($i = 0; $i < count($list); $i++) {
            $filename = 'RiseOfGold-FG-' . $list[$i] . 'x' . $list[$i] . '.png';
            $imageData = $manager->read($incomingField['image'])->resize($list[$i], $list[$i])->encode();
            Storage::put('/public/icons/' . $filename, $imageData);
        }
    }

    public function createHighlight(Request $request, Highlight $highlight)
    {

        $incomingField = $request->validate([
            'name' => 'required',
            'content' => 'required',
            'image' => 'required'
        ]);

        $totalHighlights = Highlight::all()->count();

        if ($totalHighlights < 5) {
            $manager = new ImageManager(new Driver());

            $filename = $incomingField['name'] . '.jpg';
            $imageData = $manager->read($incomingField['image'])->encode();
            Storage::put('/public/highlights/' . $filename, $imageData);

            $incomingField['image'] = $filename;


            Highlight::create($incomingField);
        }
        return redirect('/custom/highlights');
    }

    public function createFaq(Request $request, Faq $faq)
    {
        $incomingField = $request->validate([
            'question' => 'required',
            'answer' => 'required'
        ]);

        Faq::create($incomingField);
        return redirect('/custom/faqs');
    }

    public function createDiscount(Request $request, Discount $discount)
    {
        $incomingField = $request->validate([
            'voucher' => 'required',
            'amount' => 'required'
        ]);

        Discount::create($incomingField);
        return redirect('/custom/discounts');
    }

    public function showShapes(Shape $shape, User $user)
    {
        $allShapes = $shape->all();
        return view('admin-shapes', ['shapes' => $allShapes]);
    }

    public function showSizes(Size $size, User $user)
    {
        $allSizes = $size->all();
        return view('admin-sizes', ['sizes' => $allSizes]);
    }

    public function showMaterials(Material $material, User $user)
    {
        $allMaterials = $material->all();
        return view('admin-materials', ['materials' => $allMaterials]);
    }

    public function showEvents(Event $event, User $user)
    {
        $allEvents = $event->all();
        return view('admin-events', ['events' => $allEvents]);
    }

    public function showColors(Color $color, User $user)
    {
        $allColors = $color->all();
        return view('admin-colors', ['colors' => $allColors]);
    }

    public function showInks(Ink $ink)
    {
        $allInks = $ink->all();
        return view('admin-inks', ['inks' => $allInks]);
    }

    public function showReviews(Review $review)
    {
        $allReviews = $review->all();
        return view('admin-reviews', ['reviews' => $allReviews]);
    }

    public function showIconGenerate()
    {
        return view('icon-generate');
    }

    public function showFeatures(Banner $banner)
    {
        $allFeatures = $banner->where('type', '!=', 'home-banner')->get();

        return view('admin-features', ['features' => $allFeatures]);
    }

    public function showDiscounts(Discount $discount)
    {
        $allDiscounts = $discount->all();
        return view('admin-discounts', ['discounts' => $allDiscounts]);
    }

    public function showFonts(Font $font)
    {
        $allFonts = $font->all();
        return view('admin-fonts', ['fonts' => $allFonts]);
    }

    public function showPostCodeByState(Request $request, $state)
    {
        $states = Postcode::groupBy('state')->pluck('state');
        $postcodes = Postcode::search($state)->paginate(20);
        return view('admin-shippings', [
            'st' =>  $state,
            'states' => $states,
            'postcodes' => $postcodes
        ]);
    }

    public function setAllStandardCost(Request $request)
    {
        $incomingFields = $request->validate([
            'state' => 'required',
            'standard' => 'required'
        ]);

        Postcode::where('state', $incomingFields['state'])->update(['standard' => $incomingFields['standard']]);
        // return back();
    }

    public function setAllExpressCost(Request $request)
    {
        $incomingFields = $request->validate([
            'state' => 'required',
            'express' => 'required'
        ]);

        Postcode::where('state', $incomingFields['state'])->update(['express' => $incomingFields['express']]);
        // return back();
    }


    public function showShippings(Postcode $postcode)
    {
        $states = Postcode::groupBy('state')->pluck('state');
        $allPostCodes = $postcode->paginate(20);
        return view('admin-shippings', ['states' => $states, 'st' => '', 'postcodes' => $allPostCodes]);
    }


    public function showHighlight(Highlight $highlight)
    {
        $allHighlights = $highlight->all();
        return view('admin-highlights', ['highlights' => $allHighlights]);
    }

    public function showFaqs(Faq $faq)
    {
        $allFaqs = $faq->all();
        return view('admin-faqs', ['faqs' => $allFaqs]);
    }

    public function showProducts(Product $product, User $user)
    {
        $allProducts = $product->where('name', '!=', 'Try Before Buy')->get();
        return view('admin-products', ['products' => $allProducts]);
    }


    public function showOrders(Order $order, User $user)
    {

        $allOrders = $order->all();
        if ($user->value('isAdmin')) {
            return view('admin-orders', ['orders' => $allOrders]);
        }
        return redirect('/');
    }

    public function detailOrder(Order $order)
    {
        $order = $order->find($order->id);
        $user = User::where('email', $order->user_email)->get();
        $address = Address::where('user_id', $user->value('id'))->where('default', true);

        //dd($order->user()->addresses());
        return view('order-detail', ['order' => $order, 'user' => $user, 'address' => $address]);
    }

    public function showEditProduct(Product $product, User $user)
    {
        if ($user->value('isAdmin')) {
            return view('edit-product', ['product' => $product]);
        }
        return redirect('/');
    }

    public function showEditDesign(Product $product, User $user)
    {

        return view('edit-design', ['product' => $product]);
    }

    public function showEditFaq(Faq $faq)
    {
        return view('edit-faq', ['faq' => $faq]);
    }

    public function showEditDiscount(Discount $discount)
    {
        return view('edit-discount', ['discount' => $discount]);
    }

    public function showEditFont(Font $font)
    {
        return view('edit-font', ['font' => $font]);
    }

    public function showEditColor(Color $color, User $user)
    {
        $color = Color::find($color->id);
        return view('edit-color', ['color' => $color]);
    }

    public function showEditInk(Ink $ink)
    {
        $ink = Ink::find($ink->id);
        return view('edit-ink', ['ink' => $ink]);
    }


    public function showEditReview(Review $review)
    {
        $review = Review::find($review->id);
        return view('edit-review', ['review' => $review]);
    }

    public function showEditFeature(Banner $banner)
    {
        $feature = Banner::find($banner->id);
        return view('edit-feature', ['feature' => $feature]);
    }

    public function showEditHighlight(Highlight $highlight)
    {
        $highlight = highlight::find($highlight->id);
        return view('edit-highlight', ['highlight' => $highlight]);
    }

    public function showEditHomeBanner(Banner $banner)
    {
        $banner = Banner::where('type', 'home-banner')->get();
        // dd($banner->value('content'));
        return view('edit-home-banner', ['banner' => $banner]);
    }

    public function editProduct(Request $request, Product $product)
    {

        $incomingFields = $request->validate([
            'name' => 'required',
            'price' => 'required',
            'description' => 'nullable',
            'quantity' => 'required',
            'SKU' => 'required',
            'box_material' => 'nullable',
            'box_content' => 'nullable',
            'box_dimension_inner' => 'nullable',
            'box_dimension_outer' => 'nullable',
            'flower_type' => 'required',

        ]);



        $incomingFields['description'] = $request->description != null || $request->description != ""
            ? $request->description : "N/A";
        $incomingFields['box_material'] = $request->box_material != null || $request->box_material != ""
            ? $request->box_material : "N/A";
        $incomingFields['box_content'] = $request->box_content != null || $request->box_content != ""
            ? $request->box_content : "N/A";
        $incomingFields['box_dimension_inner'] = $request->box_dimension_inner != null  || $request->box_dimension_inner != ""
            ? $request->box_dimension_inner : "N/A";
        $incomingFields['box_dimension_outer'] = $request->box_dimension_outer != null  || $request->box_dimension_outer != ""
            ? $request->box_dimension_outer : "N/A";



        if ($request['hasMessage'] != null) {
            $incomingFields['hasMessage'] = 1;
        } else {
            $incomingFields['hasMessage'] = 0;
        }


        $updateProduct = $product->find($product->id);
        $updateProduct->update($incomingFields);

        $types = $request->validate([
            'type' => 'required',
        ]);
        $updateProduct->types()->detach();
        foreach ($types['type'] as $type) {

            $updateProduct->types()->updateOrCreate(['name' => $type]);
        }

        $updateProduct->events()->detach();
        $events = $request->validate([
            'event' => 'required',
        ]);
        foreach ($events['event'] as $event) {
            $updateProduct->events()->updateOrCreate(['name' => $event]);
        }

        $materials = $request->validate([
            'material' => 'required',
        ]);
        $updateProduct->materials()->detach();
        foreach ($materials['material'] as $material) {
            $updateProduct->materials()->updateOrCreate(['name' => $material]);
        }

        $shapes = $request->validate([
            'shape' => 'required',
        ]);
        $updateProduct->shapes()->detach();
        foreach ($shapes['shape'] as $shape) {
            $updateProduct->shapes()->updateOrCreate(['name' => $shape]);
        }

        $colors = $request->validate([
            'color' => 'required',
        ]);
        $updateProduct->colors()->detach();
        foreach ($colors['color'] as $color) {
            $updateProduct->colors()->updateOrCreate(['name' => $color]);
        }

        $sizes = $request->validate([
            'size' => 'required',
        ]);
        $updateProduct->sizes()->detach();
        foreach ($sizes['size'] as $size) {
            $updateProduct->sizes()->updateOrCreate(['name' => $size]);
        }

        $updateProduct->images()->detach();
        $images = $request->validate([
            'image' => 'nullable'
        ]);
        $manager = new ImageManager(new Driver());

        if ($images != null) {
            foreach ($images['image'] as $image) {
                $filename = $updateProduct->SKU . '-' . str_replace(' ', '-', $updateProduct->name) . '-' . uniqid() . '.jpg';
                $imageData = $manager->read($image)->encode();
                Storage::put('/public/products/' . $filename, $imageData);
                $updateProduct->images()->updateOrCreate(['name' => $filename]);
            }
        }
        return redirect('/account/admin/products');
    }

    public function editDesign(Request $request, Product $product)
    {

        $incomingFields = $request->validate([
            'name' => 'required',
            'price' => 'required',
            'description' => 'nullable',
            'quantity' => 'required',
            'SKU' => 'required',
            'box_material' => 'nullable',
            'box_content' => 'nullable',
            'box_dimension_inner' => 'nullable',
            'box_dimension_outer' => 'nullable',
            'flower_type' => 'required',

        ]);



        $incomingFields['description'] = $request->description != null || $request->description != ""
            ? $request->description : "N/A";
        $incomingFields['box_material'] = $request->box_material != null || $request->box_material != ""
            ? $request->box_material : "N/A";
        $incomingFields['box_content'] = $request->box_content != null || $request->box_content != ""
            ? $request->box_content : "N/A";
        $incomingFields['box_dimension_inner'] = $request->box_dimension_inner != null  || $request->box_dimension_inner != ""
            ? $request->box_dimension_inner : "N/A";
        $incomingFields['box_dimension_outer'] = $request->box_dimension_outer != null  || $request->box_dimension_outer != ""
            ? $request->box_dimension_outer : "N/A";




        $incomingFields['hasMessage'] = 1;



        $updateProduct = $product->find($product->id);
        $updateProduct->update($incomingFields);


        $colors = $request->validate([
            'color' => 'required',
        ]);
        $updateProduct->colors()->detach();
        foreach ($colors['color'] as $color) {
            $updateProduct->colors()->updateOrCreate(['name' => $color]);
        }


        $updateProduct->images()->detach();
        $images = $request->validate([
            'image' => 'nullable'
        ]);
        $manager = new ImageManager(new Driver());

        if ($images != null) {
            foreach ($images['image'] as $image) {
                $filename = $updateProduct->SKU . '-' . str_replace(' ', '-', $updateProduct->name) . '-' . uniqid() . '.jpg';
                $imageData = $manager->read($image)->encode();
                Storage::put('/public/products/' . $filename, $imageData);
                $updateProduct->images()->updateOrCreate(['name' => $filename]);
            }
        }
        return redirect('/account/admin/designs');
    }

    public function deleteProduct(Product $product)
    {
        $deleteProduct = $product->find($product->id);

        $deleteProduct->types()->detach();
        $deleteProduct->events()->detach();
        $deleteProduct->materials()->detach();
        $deleteProduct->shapes()->detach();
        $deleteProduct->colors()->detach();
        $deleteProduct->sizes()->detach();
        $deleteProduct->images()->detach();

        $deleteProduct->delete();
        return back();
    }

    public function addColor(Request $request, Color $color)
    {
        $incomingFields = $request->validate([
            'name' => 'required',
            'image' => 'required'
        ]);

        $filename = str_replace(' ', '', $incomingFields['name']) . '.jpg';
        $manager = new ImageManager(new Driver());
        $imageData = $manager->read($request->file('image'))->encode();
        Storage::put('/public/color/' . $filename, $imageData);
        $incomingFields['image'] = $filename;
        $color->create($incomingFields);
        return back();
    }

    public function createDesign(Request $request, Product $product)
    {
        $incomingFields = $request->validate([
            'name' => 'required',
            'price' => 'required',
            'description' => 'nullable',
            'quantity' => 'required',
            'SKU' => 'required',
            'box_material' => 'nullable',
            'box_content' => 'nullable',
            'box_dimension_inner' => 'nullable',
            'box_dimension_outer' => 'nullable',
            'flower_type' => 'required',

        ]);


        $incomingFields['description'] = $request->description != null || $request->description != ""
            ? $request->description : "N/A";
        $incomingFields['box_material'] = $request->box_material != null || $request->box_material != ""
            ? $request->box_material : "N/A";
        $incomingFields['box_content'] = $request->box_content != null || $request->box_content != ""
            ? $request->box_content : "N/A";
        $incomingFields['box_dimension_inner'] = $request->box_dimension_inner != null  || $request->box_dimension_inner != ""
            ? $request->box_dimension_inner : "N/A";
        $incomingFields['box_dimension_outer'] = $request->box_dimension_outer != null  || $request->box_dimension_outer != ""
            ? $request->box_dimension_outer : "N/A";



        $incomingFields['hasMessage'] = 1;

        $newProduct = $product->create($incomingFields);


        $colors = $request->validate([
            'color' => 'required',
        ]);
        foreach ($colors['color'] as $color) {
            $newProduct->colors()->updateOrCreate(['name' => $color]);
        }


        $images = $request->validate([
            'image' => 'required'
        ]);
        $manager = new ImageManager(new Driver());
        foreach ($images['image'] as $image) {
            $filename = $newProduct->SKU . '-' . str_replace(' ', '-', $newProduct->name) . '-' . uniqid() . '.jpg';
            $imageData = $manager->read($image)->encode();
            Storage::put('/public/products/' . $filename, $imageData);
            $newProduct->images()->updateOrCreate(['name' => $filename]);
        }


        return redirect('/account/admin/designs');
    }

    public function addProduct(Request $request, Product $product)
    {
        $incomingFields = $request->validate([
            'name' => 'required',
            'price' => 'required',
            'description' => 'nullable',
            'quantity' => 'required',
            'SKU' => 'required',
            'box_material' => 'nullable',
            'box_content' => 'nullable',
            'box_dimension_inner' => 'nullable',
            'box_dimension_outer' => 'nullable',
            'flower_type' => 'required',

        ]);


        $incomingFields['description'] = $request->description != null || $request->description != ""
            ? $request->description : "N/A";
        $incomingFields['box_material'] = $request->box_material != null || $request->box_material != ""
            ? $request->box_material : "N/A";
        $incomingFields['box_content'] = $request->box_content != null || $request->box_content != ""
            ? $request->box_content : "N/A";
        $incomingFields['box_dimension_inner'] = $request->box_dimension_inner != null  || $request->box_dimension_inner != ""
            ? $request->box_dimension_inner : "N/A";
        $incomingFields['box_dimension_outer'] = $request->box_dimension_outer != null  || $request->box_dimension_outer != ""
            ? $request->box_dimension_outer : "N/A";



        if ($request['hasMessage'] != null) {
            $incomingFields['hasMessage'] = 1;
        } else {
            $incomingFields['hasMessage'] = 0;
        }

        $newProduct = $product->create($incomingFields);

        $types = $request->validate([
            'type' => 'required',
        ]);
        foreach ($types['type'] as $type) {
            $newProduct->types()->updateOrCreate(['name' => $type]);
        }

        $events = $request->validate([
            'event' => 'required',
        ]);
        foreach ($events['event'] as $event) {
            $newProduct->events()->updateOrCreate(['name' => $event]);
        }

        $materials = $request->validate([
            'material' => 'required',
        ]);
        foreach ($materials['material'] as $material) {
            $newProduct->materials()->updateOrCreate(['name' => $material]);
        }

        $shapes = $request->validate([
            'shape' => 'required',
        ]);
        foreach ($shapes['shape'] as $shape) {
            $newProduct->shapes()->updateOrCreate(['name' => $shape]);
        }

        $colors = $request->validate([
            'color' => 'required',
        ]);
        foreach ($colors['color'] as $color) {
            $newProduct->colors()->updateOrCreate(['name' => $color]);
        }

        $sizes = $request->validate([
            'size' => 'required',
        ]);
        foreach ($sizes['size'] as $size) {
            $newProduct->sizes()->updateOrCreate(['name' => $size]);
        }

        $images = $request->validate([
            'image' => 'required'
        ]);
        $manager = new ImageManager(new Driver());
        foreach ($images['image'] as $image) {
            $filename = $newProduct->SKU . '-' . str_replace(' ', '-', $newProduct->name) . '-' . uniqid() . '.jpg';
            $imageData = $manager->read($image)->encode();
            Storage::put('/public/products/' . $filename, $imageData);
            $newProduct->images()->updateOrCreate(['name' => $filename]);
        }

        return redirect('/account/admin/products');
    }

    public function showCreateProduct()
    {
        return view('create-product');
    }

    public function showCreateDesign()
    {
        return view('create-design');
    }

    public function showCreateReview()
    {
        return view('create-review');
    }

    public function showCreateFeature()
    {
        return view('create-feature');
    }

    public function showCreateHighlight()
    {
        return view('create-highlight');
    }

    public function showCreateFaq()
    {
        return view('create-faq');
    }

    public function showCreateDiscount()
    {
        return view('create-discount');
    }

    public function showCreateFont()
    {
        return view('create-font');
    }

    public function showCreateInk()
    {
        return view('create-ink');
    }

    public function deleteUser(User $user)
    {
        $user = User::find($user->id);

        $user->delete();
        return back();
    }

    public function deleteType(Type $type)
    {
        $type = Type::find($type->id);

        $type->delete();
    }

    public function deleteShape(Shape $shape)
    {
        $shape = Shape::find($shape->id);

        $shape->delete();
    }

    public function deleteSize(Size $size)
    {
        $size = Size::find($size->id);

        $size->delete();
    }


    public function deleteMaterial(Material $material)
    {
        $material = Material::find($material->id);

        $material->delete();
    }

    public function deleteEvent(Event $event)
    {
        $event = Event::find($event->id);

        $event->delete();
    }

    public function deleteFaq(Faq $faq)
    {
        $faq = Faq::find($faq->id);
        $faq->delete();
    }

    public function deleteDiscount(Discount $discount)
    {
        $discount = Discount::find($discount->id);
        $discount->delete();
    }

    public function deleteFont(Font $font)
    {
        $font = Font::find($font->id);
        $font->delete();
    }

    public function deleteReview(Review $review)
    {
        $review = Review::find($review->id);
        $review->delete();
    }

    public function deleteFeature(Banner $banner)
    {
        $banner = Banner::find($banner->id);
        $banner->delete();
    }

    public function deleteHighlight(Highlight $highlight)
    {
        $highlight = Highlight::find($highlight->id);
        $highlight->delete();
    }

    public function deleteColor(Color $color, Product $product)
    {
        $color = Color::find($color->id);

        $products = $color->products()->get();
        if ($products->count() > 0) {
            // foreach ($products as $product) {
            //     $product->colors()->detach();
            // }
        }

        $color->delete();
    }

    public function deleteInk(Ink $ink)
    {
        $ink = Ink::find($ink->id);

        // $products = $ink->products()->get();
        // if ($products->count() > 0) {
        //     // foreach ($products as $product) {
        //     //     $product->colors()->detach();
        //     // }
        // }

        $ink->delete();
    }

    public function makeAdmin(User $user)
    {
        $user = User::find($user->id);
        if (!$user->isSubAdmin) {
            $user->isSubAdmin = true;
        } else {
            $user->isSubAdmin = false;
        }
        $user->save();
        return back();
    }

    public function makeVerified(User $user)
    {
        $user = User::find($user->id);
        if (!$user->email_verified_at) {
            $user->email_verified_at =
                Carbon::now()->toDateTimeString();
        } else {
            return back();
        }
        $user->save();
        return back();
    }

    public function getDiscount(Request $request)
    {
        $incomingFields = $request->validate([
            'reductions' => 'required'
        ]);

        $discount = Discount::where('voucher', $incomingFields['reductions'])->first();

        if ($discount != null) {
            $request->session()->put('discount_code', $discount->voucher);
            $request->session()->put('discount_amount', $discount->amount);

            if ($request->session()->has('total_price')) {
                $request->session()->put('total_price', $request->session()->get('total_price')
                    - ($request->session()->get('total_price') * ($discount->amount / 100)));
            }
        }
    }

    public function getShippingCost(Request $request)
    {
        $incomingFields = $request->validate([
            'postalCode' => 'required',
            'delivery_strategies' => 'required',
            'state' => 'required',
        ]);

        $postCode = Postcode::where('state', $incomingFields['state'])
            ->where('postcode', $incomingFields['postalCode'])->get();
        //dd($postCode->value('express'));

        if ($postCode != null) {
            if (
                $incomingFields['delivery_strategies'] == 'Standard' ||
                $incomingFields['delivery_strategies'] == 'standard'
            ) {
                $shippingCost = $postCode->value('standard');
            } else if (
                $incomingFields['delivery_strategies'] == 'Express' ||
                $incomingFields['delivery_strategies'] == 'express'
            ) {
                $shippingCost = $postCode->value('express');
            } else {
                $shippingCost = 0;
            }
            $request->session()->put('shipping_cost', $shippingCost);
            $request->session()->put('full_price', $request->session()->get('total_price') + $shippingCost);
            return $shippingCost;
        }
    }

    public function designYourOwn(Product $product)
    {
        $product = $product->where('name', 'Try Before Buy')->first();
        $fonts = Font::all();
        return view('design-your-own', ['fonts' => $fonts, 'product' => $product]);
    }

    public function showDesign(Product $product)
    {
        $allDesigns = $product->where('name', 'Try Before Buy')->get();
        return view('admin-designs', ['products' => $allDesigns]);
    }
}
