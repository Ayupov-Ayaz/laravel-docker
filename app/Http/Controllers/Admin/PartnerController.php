<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\RequiredPartnerPost;
use App\Models\Partner;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;

class PartnerController extends Controller
{
    public function index(){
        $partners = Partner::orderBy('id', 'desc')->paginate(15);
        return view('admin.partners.index', ['partners'=>$partners]);

    }

    public function create(){
        return view('admin.partners.create');
    }

    public function createPost(RequiredPartnerPost $request){
        $data = $request->all();
        unset($data['_token']);
        $image = $request->file('image');
        $data['image'] = '';
        if ($image) {
            $data['image'] = str_replace('public', '/storage', $image->store('public/partner'));
        }
        Partner::create($data);
        return Redirect::route('admin-partners');
    }

    public function edit($partner_id){
        $partner = Partner::find($partner_id);

        return view('admin.partners.edit',['partner'=>$partner]);
    }

    public function editPost(RequiredPartnerPost $request, $partner_id){
        $data = $request->all();
        $partner = Partner::find($partner_id);
        $image = $request->file('image');
        if ($image) {
            $partner->image = str_replace('public', '/storage', $image->store('public/partner'));
        }
        $partner->www = $data['www'];

        foreach (config('translatable.locales') as $locale) {
            $partner->translateOrNew($locale)->name = $data[$locale]['name'];
            $partner->translateOrNew($locale)->description = $data[$locale]['description'];
        }
        $partner->save();
        return Redirect::route('admin-partners');
    }

    public function remove($partner_id) {
        Partner::destroy($partner_id);
        return Redirect::route('admin-partners');
    }
}
