<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Car extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'description',
        'image'
    ];
}
