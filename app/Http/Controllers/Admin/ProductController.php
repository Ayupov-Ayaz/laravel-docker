<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredProductPost;
use App\Models\Category;
use App\Models\Firm;
use App\Models\Pack;
use App\Models\Product;
use App\Models\ProductAdvantage;
use App\Models\ProductType;
use App\Models\Volume;
use Illuminate\Support\Facades\Redirect;

class ProductController extends Controller
{
    public function index(){
        $products=Product::orderBy('id', 'desc')->paginate(15);;
        return view('admin.products.index', ['products'=>$products]);
    }

    public function create(){
        $categories = Category::all();
        $categories_data = [];
        $firms = Firm::all();
        $firms_data = [];
        $product_types = ProductType::all();
        $product_types_data = [];
        $product_advantages = ProductAdvantage::all();
        $packs = Pack::all();
        $volumes = Volume::all();

        foreach ($categories as $category) {
            $categories_data[$category->id] = $category->name;
        }

        foreach ($firms as $firm) {
            $firms_data[$firm->id] = $firm->name;
        }

        foreach ($product_types as $product_type) {
            $product_types_data[$product_type->id] = $product_type->name;
        }

        return view('admin.products.create', [
            'categories' => $categories_data,
            'firms' => $firms_data,
            'product_types' => $product_types_data,
            'product_advantages' => $product_advantages,
            'packs' => $packs,
            'volumes' => $volumes,
        ]);
    }

    public function createPost(RequiredProductPost $request){
        $data = $request->all();
        unset($data['_token']);
        $image = $request->file('image');
        $data['image'] = '';
        if ($image) {
            $data['image'] = str_replace('public', '/storage', $image->store('public/product'));
        }
        $thumb = $request->file('thumb');
        $data['thumb'] = '';
        if ($thumb) {
            $data['thumb'] = str_replace('public', '/storage', $thumb->store('public/product'));
        }

        $product_advantages = [];
        if (array_key_exists('product_advantages', $data)) {
            $product_advantages = ProductAdvantage::find($data['product_advantages']);
            unset($data['product_advantages']);
        }

        $volumes = [];
        if (array_key_exists('volumes', $data)) {
            $volumes = Volume::find($data['volumes']);
            unset($data['volumes']);
        }

        $packs = [];
        if (array_key_exists('product_packs', $data)) {
            $packs = Pack::find($data['product_packs']);
            unset($data['product_packs']);
        }

        $product = Product::create($data);

        $product->advantages()->attach($product_advantages);
        $product->volumes()->attach($volumes);
        $product->product_packs()->attach($packs);

        return Redirect::route('admin-products');
    }

    public function edit($product_id){
        $product = Product::find($product_id);

        $categories = Category::all();
        $categories_data = [];
        $firms = Firm::all();
        $firms_data = [];
        $product_types = ProductType::all();
        $product_types_data = [];
        $product_advantages = ProductAdvantage::all();
        $packs = Pack::all();
        $volumes = Volume::all();

        foreach ($categories as $category) {
            $categories_data[$category->id] = $category->name;
        }

        foreach ($firms as $firm) {
            $firms_data[$firm->id] = $firm->name;
        }

        foreach ($product_types as $product_type) {
            $product_types_data[$product_type->id] = $product_type->name;
        }

        return view('admin.products.edit',[
            'product'=>$product,
            'categories' => $categories_data,
            'firms' => $firms_data,
            'product_types' => $product_types_data,
            'product_advantages' => $product_advantages,
            'packs' => $packs,
            'volumes' => $volumes,
        ]);
    }

    public function editPost(RequiredProductPost $request, $product_id){
        $data = $request->all();
        $product = Product::find($product_id);
        $image = $request->file('image');
        if ($image) {
            $product->image = str_replace('public', '/storage', $image->store('public/product'));
        }

        $thumb = $request->file('thumb');
        if ($thumb) {
            $product->thumb = str_replace('public', '/storage', $thumb->store('public/product'));
        }

        $product->category_id = $data['category_id'];
        $product->firm_id = $data['firm_id'];
        $product->product_type_id = $data['product_type_id'];
        $product->youtube = $data['youtube'];
        $product->fat = $data['fat'];
        $product->exp = $data['exp'];
        $product->packs = $data['packs'];
        $product->calorie = $data['calorie'];
        $product->temperature_from = $data['temperature_from'];
        $product->temperature_to = $data['temperature_to'];
        $product->is_new = array_key_exists('is_new', $data);

        foreach (config('translatable.locales') as $locale) {
            $product->translateOrNew($locale)->name = $data[$locale]['name'];
            $product->translateOrNew($locale)->details = $data[$locale]['details'];
            $product->translateOrNew($locale)->description = $data[$locale]['description'];
            $product->translateOrNew($locale)->special = $data[$locale]['special'];
        }
        $product->save();

        if (array_key_exists('product_advantages', $data)) {
            $product_advantages = ProductAdvantage::find($data['product_advantages']);
            $product->advantages()->sync($product_advantages);
        }
        if (array_key_exists('volumes', $data)) {
            $volumes = Volume::find($data['volumes']);
            $product->volumes()->sync($volumes);
        }
        if (array_key_exists('product_packs', $data)) {
            $packs = Pack::find($data['product_packs']);
            $product->product_packs()->sync($packs);
        }
        return Redirect::route('admin-products');
    }

    public function remove($category_id) {
        Product::destroy($category_id);
        return Redirect::route('admin-products');
    }
}
