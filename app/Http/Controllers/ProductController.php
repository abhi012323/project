<?php

namespace App\Http\Controllers;

use App\Models\Color;
use App\Models\Event;
use App\Models\Font;
use App\Models\Material;
use App\Models\Product;
use App\Models\Shape;
use App\Models\Size;
use App\Models\Type;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ProductController extends Controller
{
    public function showAllProducts(Product $product)
    {
        $product = Product::where('name', '!=', 'Design Your Own')->get();
        return view('products', ['products' => $product, 'title' => "Products"]);
    }

    public function showProductsByType($type)
    {
        $term = ucwords((str_replace('-', ' ', $type)));
        $typeid = Type::search($term)->get()->value('id');
        $collection = Type::find($typeid)->products()->get();
        return view('products', ['products' => $collection, 'title' => $term]);
    }

    public function showProductsByShape($shape)
    {
        $term = ucwords((str_replace('-', ' ', $shape)));
        $typeid = Shape::search($term)->get()->value('id');
        $collection = Shape::find($typeid)->products()->get();
        return view('products', ['products' => $collection, 'title' => $term]);
    }

    public function showProductsBySize($size)
    {
        $term = ucwords((str_replace('-', ' ', $size)));
        $typeid = Size::search($term)->get()->value('id');
        $collection = Size::find($typeid)->products()->get();
        return view('products', ['products' => $collection, 'title' => $term]);
    }

    public function showProductsByMaterial($material)
    {
        $term = ucwords((str_replace('-', ' ', $material)));
        $typeid = Material::search($term)->get()->value('id');
        $collection = Material::find($typeid)->products()->get();
        return view('products', ['products' => $collection, 'title' => $term]);
    }

    public function showProductsByEvent($event)
    {
        $term = ucwords((str_replace('-', ' ', $event)));
        $typeid = Event::search($term)->get()->value('id');
        $collection = Event::find($typeid)->products()->get();
        return view('products', ['products' => $collection, 'title' => $term]);
    }

    public function search(Request $request)
    {
        $incomingField = $request->validate([
            'term' => 'required'
        ]);

        $term = $incomingField['term'];
        $products = Product::search($term)->get();

        return view('search', ['products' => $products, 'term' => $term]);
    }

    public function detailProduct(Product $product)
    {
        //dd(Session::all());
        $fonts = Font::all();
        return view('single-product', ['fonts' => $fonts, 'product' => $product]);
    }


    public function filterAscending(Product $product)
    {
        $product = Product::orderBy('name', "DESC")->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterDescending(Product $product)
    {
        $product = Product::orderBy('name', "DESC")->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterFeatured(Product $product)
    {
        $product = Product::orderBy('price', "DESC")->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterBestSelling(Product $product)
    {
        $product = Product::orderBy('sold_amount', "DESC")->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterPriceAscending(Product $product)
    {
        $product = Product::orderBy('price', "DESC")->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterPriceDescending(Product $product)
    {
        $product = Product::orderBy('price', "DESC")->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterDateAscending(Product $product)
    {
        $product = Product::orderBy('updated_at')->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterDateDescending(Product $product)
    {
        $product = Product::orderBy('updated_at', "DESC")->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterInStock(Product $product)
    {
        $product = Product::where('quantity', '>', 0)->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterOutStock(Product $product)
    {
        $product = Product::where('quantity', '=', 0)->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterColor($color)
    {
        $id = Color::where('name', strtolower($color))->get()->value('id');
        $product = Color::find($id)->products()->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }

    public function filterByPrice($min, $max)
    {
        $product = Product::where('price', '>', $min)->where('price', '<', $max)->get();
        return response()->json([
            'theHTML' => view('products-only', ['products' => $product])->render()
        ]);
    }
}
