<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class FaqCategory extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'order'
    ];

    protected $translatable = [
        'name'
    ];
}
