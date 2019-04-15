<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredOtherPost;
use App\Models\Firm;
use Illuminate\Support\Facades\Redirect;

class FirmController extends Controller
{
    public function index(){
        $firms = Firm::orderBy('id', 'desc')->paginate(15);;
        return view('admin.products.firms.index', ['firms' => $firms]);
    }

    public function create(){
        return view('admin.products.firms.create');
    }

    public function createPost(RequiredOtherPost $request){
        $data = $request->all();
        unset($data['_token']);
        $image = $request->file('image');
        $data['image'] = '';
        if ($image) {
            $data['image'] = str_replace('public', '/storage', $image->store('public/firm'));
        }
        Firm::create($data);
        return Redirect::route('admin-firms');
    }

    public function edit($firm_id){
        $firm = Firm::find($firm_id);
        return view('admin.products.firms.edit',['firm'=>$firm]);
    }

    public function editPost(RequiredOtherPost $request, $firm_id){
        $data = $request->all();
        $firm = Firm::find($firm_id);
        $image = $request->file('image');
        if ($image) {
            $firm->image = str_replace('public', '/storage', $image->store('public/firm'));
        }

        foreach (config('translatable.locales') as $locale) {
            $firm->translateOrNew($locale)->name = $data[$locale]['name'];
        }
        $firm->save();
        return Redirect::route('admin-firms');
    }

    public function remove($firm_id) {
        Firm::destroy($firm_id);
        return Redirect::route('admin-firms');
    }
}
