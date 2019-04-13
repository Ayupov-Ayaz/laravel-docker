<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use \Dimsav\Translatable\Translatable;
    public $translatedAttributes = ['name'];
    protected $fillable = ['image'];

    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }

    public function firms()
    {
        return $this->belongsToMany('App\Models\Firm', 'products')->groupBy('firms.id');
    }

    public function product_types()
    {
        return $this->belongsToMany('App\Models\ProductType', 'products');
    }
}
