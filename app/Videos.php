<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Videos extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'title',
        'date',
        'video_url'
    ];

    protected $translatable = ['title'];

    protected $dates = ['date'];
}
