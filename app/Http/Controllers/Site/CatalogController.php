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

class CatalogController extends Controller
{
    public function index($category_id = null, $firm_id = null, $type_id = null)
    {
        if (is_null($category_id)) {
            $category = Category::first();
            return Redirect::route('catalog', ['id' => $category->id]);
        }
        $categories = Category::all();
        $category = Category::find($category_id);

        $products = Product::where('category_id', $category_id);

        $firms = $category->firms;
        $types = $category->product_types();
        $firm = null;
        if (isset($firm_id)) {
            $firm = Firm::find($firm_id);
            $types = $types->where('products.firm_id', $firm_id);
            $products = $products->where('firm_id', $firm_id);
        }

        $types = $types->groupBy('product_types.id')->get();
        $product_type = null;
        if (isset($type_id)) {
            $product_type = ProductType::find($type_id);
            $products = $products->where('product_type_id', $type_id);
        }

        $products = $products->orderBy('id', 'desc')->paginate(15);

        $new_products = Product::where('is_new', true)
            ->orderBy('id', 'desc')
            ->limit(4)
            ->get();

        $news_latest = News::orderBy('id', 'desc')
            ->limit(2)
            ->get();

        return view('site.catalog', [
            'categories' => $categories,
            'category' => $category,
            'firms' => $firms,
            'firm' => $firm,
            'types' => $types,
            'product_type' => $product_type,
            'products' => $products,
            'new_products' => $new_products,
            'news_latest' => $news_latest,
        ]);
    }

    public function indexByType($category_id, $type_id){
        return $this->index($category_id, null, $type_id);
    }

    public function indexByFirm($category_id, $firm_id){
        return $this->index($category_id, $firm_id, null);
    }
}
