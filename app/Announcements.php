<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Announcements extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'title',
        'description',
        'date'
    ];

    public function getPageUrlAttribute() {
        return 'single-announcement/'.$this->id;
    }

    protected $translatable = [
        'title',
        'description'
    ];

    public $route = 'show.announcement.individual';

    protected $dates = ['date'];
}
