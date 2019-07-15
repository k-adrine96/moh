<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class HomepageSlider extends Model
{
    use Translatable;

    protected $fillable = [
        'title',
        'text',
        'image',
        'url',
        'date'
    ];

    protected $Translatable = [
        'title',
        'text'
    ];
}
