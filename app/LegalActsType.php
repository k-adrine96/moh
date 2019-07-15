<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class LegalActsType extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'slug'
    ];

    protected $Translatable = ['name'];
}
