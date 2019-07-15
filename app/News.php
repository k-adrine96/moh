<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use Translatable;

    protected $fillable = [
        'title',
        'description',
        'images',
        'video',
        'date'
    ];

    protected $Translatable = [
        'title',
        'description'
    ];

//     public function setVideoAttribute($yVideo)
//     {
//         $this->video = explode('/', $yVideo)[3];
//         return $this->video;
//     }
}
