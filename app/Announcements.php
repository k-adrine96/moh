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

    protected $translatable = [
        'title',
        'description'
    ];

    protected $dates = ['date'];
}
