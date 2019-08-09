<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Announcements extends Model
{
    use Translatable;

    protected $fillable = [
        'title',
        'description',
        'date'
    ];

    protected $translatable = [
        'title',
        'description'
    ];

    public $route = 'show.announcement.individual';

    protected $dates = ['date'];
}
