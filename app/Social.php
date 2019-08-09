<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Social extends BaseModel
{
    protected $fillable = [
        'url',
        'slug',
        'order'
    ];
}
