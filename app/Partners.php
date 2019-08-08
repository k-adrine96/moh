<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Partners extends BaseModel
{
    protected $fillable = [
        'image',
        'url',
        'slider_row'
    ];
}
