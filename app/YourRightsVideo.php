<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class YourRightsVideo extends Model
{
    use Translatable;

    protected $fillable = [
        'title',
        'date',
        'video_url',
        'order'
    ];

    protected $Translatable = ['title'];
}
