<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class MohConsultant extends BaseModel
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

    protected $translatable = [
        'position',
        'name',
        'working_place'
    ];
}
