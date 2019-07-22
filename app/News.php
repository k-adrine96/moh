<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class News extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'title',
        'description',
        'images',
        'video',
        'date'
    ];

    protected $translatable = [
        'title',
        'description'
    ];

    protected $dates = ['date'];

//     public function setVideoAttribute($yVideo)
//     {
//         $this->video = explode('/', $yVideo)[3];
//         return $this->video;
//     }
}
