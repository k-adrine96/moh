<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class MinHistoryCategory extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'slug',
        'description'
    ];

    protected $translatable = [
        'description'
    ];
}
