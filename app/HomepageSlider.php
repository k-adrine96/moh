<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class HomepageSlider extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'title',
        'text',
        'image',
        'url',
        'date'
    ];

    protected $translatable = [
        'title',
        'text'
    ];
}
