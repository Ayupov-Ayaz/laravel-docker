<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Firm extends Model
{
    use \Dimsav\Translatable\Translatable;
    public $translatedAttributes = ['name'];
    protected $fillable = ['image'];

    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }


    public function categories()
    {
        return $this->belongsToMany('App\Models\Category', 'products')->groupBy('categories.id');
    }
}
