<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class YourRightsVideo extends Model
{
    protected $fillable = [
        'title',
        'date',
        'video_url',
        'order'
    ];
}
