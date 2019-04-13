<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use \Dimsav\Translatable\Translatable;
    
    public $translatedAttributes = [
    	'name',
    	'details',
    	'description',
    	'special',
    ];

    protected $fillable = [
    	'code',
    	'thumb',
    	'image',
    	'youtube',
    	'fat',
    	'exp',
    	'packs',
    	'calorie',
    	'temperature_from',
    	'temperature_to',
        'category_id',
        'firm_id',
        'product_type_id',
        'is_new',
    ];

    public function advantages()
    {
        return $this->belongsToMany('App\Models\ProductAdvantage', 'product_advantage_product');
    }

    public function product_packs()
    {
        return $this->belongsToMany('App\Models\Pack', 'pack_product');
    }

    public function volumes()
    {
        return $this->belongsToMany('App\Models\Volume', 'product_volume');
    }

    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }

    public function firm()
    {
        return $this->belongsTo('App\Models\Firm');
    }

    public function product_type()
    {
        return $this->belongsTo('App\Models\ProductType');
    }
}
