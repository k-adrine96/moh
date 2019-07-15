<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class MinHistoryCategory extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'slug',
        'description'
    ];

    protected $Translatable = ['description'];
}
