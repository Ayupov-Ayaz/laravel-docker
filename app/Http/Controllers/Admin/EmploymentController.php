<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredOtherPost;
use App\Models\JobEmployment;
use Illuminate\Support\Facades\Redirect;

class EmploymentController extends Controller
{
    public function index(){
        $employments = JobEmployment::orderBy('id', 'desc')->paginate(15);;
        return view('admin.jobs.employments.index', ['employments' => $employments]);
    }

    public function create(){
        return view('admin.jobs.employments.create');
    }

    public function createPost(RequiredOtherPost $request){
        $data = $request->all();
        unset($data['_token']);
        JobEmployment::create($data);
        return Redirect::route('admin-employments');
    }

    public function edit($employment_id){
        $employment = JobEmployment::find($employment_id);
        return view('admin.jobs.employments.edit',['employment'=>$employment]);
    }

    public function editPost(RequiredOtherPost $request, $employment_id){
        $data = $request->all();
        $employment = JobEmployment::find($employment_id);
        foreach (config('translatable.locales') as $locale) {
            $employment->translateOrNew($locale)->name = $data[$locale]['name'];
        }
        $employment->save();
        return Redirect::route('admin-employments');
    }

    public function remove($employment_id) {
        JobEmployment::destroy($employment_id);
        return Redirect::route('admin-employments');
    }
}
