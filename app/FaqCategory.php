<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class FaqCategory extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'order'
    ];

    protected $Translatable = ['name'];
}
