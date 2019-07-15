<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class MinistryStaff extends Model
{
    use Translatable;

    protected $fillable  = [
        'position',
        'name',
        'phone_number',
        'email'
    ];

    protected $Translatable = [
        'position',
        'name'
    ];
}
