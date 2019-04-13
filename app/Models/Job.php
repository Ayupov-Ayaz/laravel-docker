<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    use \Dimsav\Translatable\Translatable;

    public $translatedAttributes = [
        'name',
        'responsibilities',
        'conditions',
    ];

    protected $fillable = [
        'salary',
        'job_employment_id',
        'job_education_id',
        'city_id',
    ];

    public function job_education()
    {
        return $this->belongsTo('App\Models\JobEducation');
    }

    public function job_employment()
    {
        return $this->belongsTo('App\Models\JobEmployment');
    }

    public function city()
    {
        return $this->belongsTo('App\Models\City');
    }
}
