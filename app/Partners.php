<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Partners extends Model
{
//    use Translatable;

    protected $fillable = [
        'image',
        'url',
        'slider_row'
    ];
}
