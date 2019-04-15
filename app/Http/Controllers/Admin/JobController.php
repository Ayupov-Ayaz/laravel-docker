<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequiredJobPost;
use App\Models\JobEmployment;
use App\Models\JobEducation;
use App\Models\Job;
use App\Models\City;
use Illuminate\Support\Facades\Redirect;

class JobController extends Controller
{
    public function index(){
        $jobs = Job::orderBy('id', 'desc')->paginate(15);
        return view('admin.jobs.index', ['jobs'=>$jobs]);
    }
    public function create(){
        $employments = JobEmployment::all();
        $employments_data = [];
        $educations = JobEducation::all();
        $educations_data = [];
        $cities = City::all();
        $cities_data = [];
        foreach ($employments as $employment) {
            $employments_data[$employment->id] = $employment->name;
        }
        foreach ($educations as $education) {
            $educations_data[$education->id] = $education->name;
        }
        foreach ($cities as $city) {
            $cities_data[$city->id] = $city->name;
        }
        return view('admin.jobs.create', [
            'employments' => $employments_data,
            'educations' => $educations_data,
            'cities' => $cities_data,
        ]);
    }
    public function createPost(RequiredJobPost $request){
        $data = $request->all();
        unset($data['_token']);

        Job::create($data);

        return Redirect::route('admin-jobs');
    }
    public function edit($job_id){
        $job = Job::find($job_id);
        $employments = JobEmployment::all();
        $employments_data = [];
        $educations = JobEducation::all();
        $educations_data = [];
        $cities = City::all();
        $cities_data = [];
        foreach ($employments as $employment) {
            $employments_data[$employment->id] = $employment->name;
        }
        foreach ($educations as $education) {
            $educations_data[$education->id] = $education->name;
        }
        foreach ($cities as $city) {
            $cities_data[$city->id] = $city->name;
        }
        return view('admin.jobs.edit',[
            'job'=>$job,
            'employments' => $employments_data,
            'educations' => $educations_data,
            'cities' => $cities_data,
        ]);
    }
    public function editPost(RequiredJobPost $request, $job_id){
        $data = $request->all();
        $job = Job::find($job_id);

        $job->job_employment_id = $data['job_employment_id'];
        $job->job_education_id = $data['job_education_id'];
        $job->city_id = $data['city_id'];
        $job->salary = $data['salary'];
        foreach (config('translatable.locales') as $locale) {
            $job->translateOrNew($locale)->name = $data[$locale]['name'];
            $job->translateOrNew($locale)->responsibilities = $data[$locale]['responsibilities'];
            $job->translateOrNew($locale)->conditions = $data[$locale]['conditions'];
        }
        $job->save();
        return Redirect::route('admin-jobs');
    }
    public function remove($employment_id) {
        Job::destroy($employment_id);
        return Redirect::route('admin-jobs');
    }
}
