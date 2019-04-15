<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Firm;
use App\Models\News;
use App\Models\Product;
use App\Models\ProductType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class ProductController extends Controller
{
    public function index($product_id)
    {
        $product = Product::find($product_id);
        $news_latest = News::orderBy('id', 'desc')
            ->limit(2)->get();
        $related_products = Product::inRandomOrder()
            ->limit(4)
            ->get();

        $next_product = Product::where('id', '>', $product_id)
            ->where('category_id', $product->category_id)
            ->where('firm_id', $product->firm_id)
            ->where('product_type_id', $product->product_type_id)
            ->orderBy('id', 'asc')->first();

        if(is_null($next_product)) {
            $next_product = Product::where('id', '<', $product_id)
                ->where('category_id', $product->category_id)
                ->where('firm_id', $product->firm_id)
                ->where('product_type_id', $product->product_type_id)
                ->orderBy('id', 'asc')->first();
        }

        if(is_null($next_product)) {
            $next_product = Product::inRandomOrder()->first();
        }


        return view('site.product', [
            'product' => $product,
            'news_latest' => $news_latest,
            'related_products' => $related_products,
            'next_product' => $next_product,
        ]);
    }

    public function newProducts() {
        $new_products = Product::where('is_new', true)
            ->orderBy('id', 'desc')
            ->get();

        return view('site.new-products', [
            'new_products' => $new_products
        ]);
    }
}
