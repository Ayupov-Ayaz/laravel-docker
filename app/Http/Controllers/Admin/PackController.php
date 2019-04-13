<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredOtherPost;
use App\Models\Pack;
use Illuminate\Support\Facades\Redirect;

class PackController extends Controller
{
    public function index(){
        $packs = Pack::orderBy('id', 'desc')->paginate(15);
        return view('admin.products.packs.index', ['packs' => $packs]);
    }

    public function create(){
        return view('admin.products.packs.create');
    }

    public function createPost(RequiredOtherPost $request){
        $data = $request->all();
        unset($data['_token']);
        Pack::create($data);
        return Redirect::route('admin-product-packs');
    }

    public function edit($pack_id){
        $pack = Pack::find($pack_id);
        return view('admin.products.packs.edit',['pack' => $pack]);
    }

    public function editPost(RequiredOtherPost $request, $pack_id){
        $data = $request->all();
        $pack = Pack::find($pack_id);
        foreach (config('translatable.locales') as $locale) {
            $pack->translateOrNew($locale)->name = $data[$locale]['name'];
        }
        $pack->save();
        return Redirect::route('admin-product-packs');
    }

    public function remove($product_advantage_id) {
        Pack::destroy($product_advantage_id);
        return Redirect::route('admin-product-packs');
    }
}
