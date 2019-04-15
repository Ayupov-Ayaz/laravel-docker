<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class JobEducation extends Model
{
    use \Dimsav\Translatable\Translatable;
    public $translatedAttributes = ['name'];
    protected $fillable = [];

    public function jobs()
    {
        return $this->hasMany('App\Models\Job');
    }
}
