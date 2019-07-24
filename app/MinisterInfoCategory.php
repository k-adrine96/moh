<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class MinisterInfoCategory extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'slug'
    ];

    protected $translatable = ['name'];
}
