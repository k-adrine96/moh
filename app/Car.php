<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Car extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'name',
        'description',
        'image'
    ];
}
