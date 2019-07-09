<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MohConsultant extends Model
{
    protected $fillable  = [
        'position',
        'name',
        'phone_number',
        'email',
        'working_place',
        'order'
    ];
}
