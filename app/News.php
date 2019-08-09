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
        'date'
    ];

    protected $translatable = [
        'title',
        'description'
    ];

    public $route = 'show.news.individual';

    protected $dates = ['date'];
//     public function setVideoAttribute($yVideo)
//     {
//         $this->video = explode('/', $yVideo)[3];
//         return $this->video;
//     }
}
