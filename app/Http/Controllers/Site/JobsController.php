<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\City;
use App\Models\Job;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class JobsController extends Controller
{
    public function index($city_id=null)
    {
        $cities = City::all();

        if(isset($city_id)) {
            $city = City::find($city_id);
            $jobs = $city->jobs;
        } else {
            $jobs = Job::all();
        }

        return view('site.jobs', [
            'city_id' => $city_id,
            'jobs' => $jobs,
            'cities' => $cities,
        ]);
    }

    public function view($id)
    {
        $job = Job::find($id);

        $related_jobs = Job::where('id', '<>', $id)->orderBy('id', 'desc')->limit(2)->get();

        return view('site.job', [
            'job' => $job,
            'related_jobs' => $related_jobs,
        ]);
    }
}
