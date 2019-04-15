<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredOtherPost;
use App\Models\JobEducation;
use Illuminate\Support\Facades\Redirect;

class EducationController extends Controller
{
    public function index(){
        $educations = JobEducation::orderBy('id', 'desc')->paginate(15);;
        return view('admin.jobs.educations.index', ['educations' => $educations]);
    }

    public function create(){
        return view('admin.jobs.educations.create');
    }

    public function createPost(RequiredOtherPost $request){
        $data = $request->all();
        unset($data['_token']);
        JobEducation::create($data);
        return Redirect::route('admin-educations');
    }

    public function edit($education_id){
        $education = JobEducation::find($education_id);
        return view('admin.jobs.educations.edit',['education'=>$education]);
    }

    public function editPost(RequiredOtherPost $request, $education_id){
        $data = $request->all();
        $education = JobEducation::find($education_id);
        foreach (config('translatable.locales') as $locale) {
            $education->translateOrNew($locale)->name = $data[$locale]['name'];
        }
        $education->save();
        return Redirect::route('admin-educations');
    }

    public function remove($education_id) {
        JobEducation::destroy($education_id);
        return Redirect::route('admin-educations');
    }
}
