<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class News extends Model
{
    use Translatable;

    protected $fillable = [
        'title',
        'description',
        'images',
        'video',
        'date',
        'url'
    ];

//     public function setVideoAttribute($yVideo)
//     {
//         $this->video = explode('/', $yVideo)[3];
//     	// dd($this->video);
//         return $this->video;
//     }
}
