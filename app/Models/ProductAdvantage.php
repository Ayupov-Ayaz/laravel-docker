<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductAdvantage extends Model
{
    use \Dimsav\Translatable\Translatable;
    
    public $translatedAttributes = ['name'];
    protected $fillable = [];

    public function products()
    {
        return $this->belongsToMany('App\Models\Product', 'product_advantage_product');
    }
}
