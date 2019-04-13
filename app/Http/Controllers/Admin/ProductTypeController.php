<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredOtherPost;
use App\Models\ProductType;
use Illuminate\Support\Facades\Redirect;

class ProductTypeController extends Controller
{
    public function index(){
        $product_types = ProductType::orderBy('id', 'desc')->paginate(15);;
        return view('admin.products.types.index', ['product_types' => $product_types]);
    }

    public function create(){
        return view('admin.products.types.create');
    }

    public function createPost(RequiredOtherPost $request){
        $data = $request->all();
        unset($data['_token']);
        ProductType::create($data);
        return Redirect::route('admin-product-types');
    }

    public function edit($firm_id){
        $product_type = ProductType::find($firm_id);
        return view('admin.products.types.edit',['product_type'=>$product_type]);
    }

    public function editPost(RequiredOtherPost $request, $type_id){
        $data = $request->all();
        $product_type = ProductType::find($type_id);
        foreach (config('translatable.locales') as $locale) {
            $product_type->translateOrNew($locale)->name = $data[$locale]['name'];
        }
        $product_type->save();
        return Redirect::route('admin-product-types');
    }

    public function remove($type_id) {
        ProductType::destroy($type_id);
        return Redirect::route('admin-product-types');
    }
}
