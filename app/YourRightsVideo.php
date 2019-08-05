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

    public $page_url = 'your-rights';

    protected $translatable = ['title'];
}