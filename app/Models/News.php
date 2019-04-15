<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use \Dimsav\Translatable\Translatable;
    public $translatedAttributes = ['name', 'content'];
    protected $fillable = ['image'];
}
