<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class MinisterStaff extends Model
{
    use Translatable;

    protected $fillable = [
        'position',
        'name',
        'phone_number',
        'email',
        'image',
        'text'
    ];

    protected $Translatable = [
        'position',
        'name',
        'text'
    ];
}
