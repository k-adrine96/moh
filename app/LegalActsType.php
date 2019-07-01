<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LegalActsType extends Model
{
    protected $fillable = [
        'name',
        'slug'
    ];
}
