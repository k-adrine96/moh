<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class YourRightsVideo extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'title',
        'date',
        'video_url',
        'order'
    ];

    protected $translatable = ['title'];
}