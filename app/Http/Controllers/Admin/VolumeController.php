<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredOtherPost;
use App\Models\Volume;
use Illuminate\Support\Facades\Redirect;

class VolumeController extends Controller
{
    public function index(){
        $volumes = Volume::orderBy('id', 'desc')->paginate(15);
        return view('admin.products.volumes.index', ['volumes' => $volumes]);
    }

    public function create(){
        return view('admin.products.volumes.create');
    }

    public function createPost(RequiredOtherPost $request){
        $data = $request->all();
        unset($data['_token']);
        Volume::create($data);
        return Redirect::route('admin-product-volumes');
    }

    public function edit($volume_id){
        $volume = Volume::find($volume_id);
        return view('admin.products.volumes.edit',['volume' => $volume]);
    }

    public function editPost(RequiredOtherPost $request, $volume_id){
        $data = $request->all();
        $volume = Volume::find($volume_id);
        foreach (config('translatable.locales') as $locale) {
            $volume->translateOrNew($locale)->name = $data[$locale]['name'];
        }
        $volume->save();
        return Redirect::route('admin-product-volumes');
    }

    public function remove($volume_id) {
        Volume::destroy($volume_id);
        return Redirect::route('admin-product-volumes');
    }
}
