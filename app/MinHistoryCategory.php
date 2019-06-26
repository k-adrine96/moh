<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MinHistoryCategory extends Model
{
    protected $fillable = [
        'name',
        'slug',
        'description'
    ];
}
