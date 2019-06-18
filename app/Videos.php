<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Videos extends Model
{
//    use Translatable;

    protected $fillable = [
        'title',
        'date',
        'video_url'
    ];

    protected $translatable = ['title'];
}
