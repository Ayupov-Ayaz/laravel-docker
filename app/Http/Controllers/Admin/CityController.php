<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredOtherPost;
use App\Models\City;
use Illuminate\Support\Facades\Redirect;

class CityController extends Controller
{
    public function index(){
        $cities = City::orderBy('id', 'desc')->paginate(15);;
        return view('admin.jobs.cities.index', ['cities' => $cities]);
    }

    public function create(){
        return view('admin.jobs.cities.create');
    }

    public function createPost(RequiredOtherPost $request){
        $data = $request->all();
        unset($data['_token']);
        City::create($data);
        return Redirect::route('admin-cities');
    }

    public function edit($city_id){
        $city = City::find($city_id);
        return view('admin.jobs.cities.edit',['city'=>$city]);
    }

    public function editPost(RequiredOtherPost $request, $city_id){
        $data = $request->all();
        $city = City::find($city_id);
        foreach (config('translatable.locales') as $locale) {
            $city->translateOrNew($locale)->name = $data[$locale]['name'];
        }
        $city->save();
        return Redirect::route('admin-cities');
    }

    public function remove($city_id) {
        City::destroy($city_id);
        return Redirect::route('admin-cities');
    }
}
