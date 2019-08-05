<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Videos extends Model
{
    use Translatable;

    protected $fillable = [
        'title',
        'date',
        'video_url'
    ];

    public function getPageUrlAttribute() {
        return 'single-video/'.$this->id;
    }

    protected $translatable = ['title'];

    protected $dates = ['date'];
}
