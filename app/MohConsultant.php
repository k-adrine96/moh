<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class MohConsultant extends Model
{
    use Translatable;

    protected $fillable  = [
        'position',
        'name',
        'phone_number',
        'email',
        'working_place',
        'order'
    ];

    protected $Translatable = [
        'position',
        'name',
        'working_place'
    ];
}
