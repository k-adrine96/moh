<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class MinisterInfoCategory extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'slug'
    ];

    protected $Translatable = ['name'];
}
