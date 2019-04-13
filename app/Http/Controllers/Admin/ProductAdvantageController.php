<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredOtherPost;
use App\Models\ProductAdvantage;
use Illuminate\Support\Facades\Redirect;

class ProductAdvantageController extends Controller
{
    public function index(){
        $product_advantages = ProductAdvantage::orderBy('id', 'desc')->paginate(15);
        return view('admin.products.advantages.index', ['product_advantages' => $product_advantages]);
    }

    public function create(){
        return view('admin.products.advantages.create');
    }

    public function createPost(RequiredOtherPost $request){
        $data = $request->all();
        unset($data['_token']);
        ProductAdvantage::create($data);
        return Redirect::route('admin-product-advantages');
    }

    public function edit($product_advantage_id){
        $product_advantage = ProductAdvantage::find($product_advantage_id);
        return view('admin.products.advantages.edit',['product_advantage'=>$product_advantage]);
    }

    public function editPost(RequiredOtherPost $request, $product_advantage_id){
        $data = $request->all();
        $product_advantage = ProductAdvantage::find($product_advantage_id);
        foreach (config('translatable.locales') as $locale) {
            $product_advantage->translateOrNew($locale)->name = $data[$locale]['name'];
        }
        $product_advantage->save();
        return Redirect::route('admin-product-advantages');
    }

    public function remove($product_advantage_id) {
        ProductAdvantage::destroy($product_advantage_id);
        return Redirect::route('admin-product-advantages');
    }
}
