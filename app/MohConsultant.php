<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

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

    public $page_url = 'moh-consultants';

    protected $translatable = [
        'position',
        'name',
        'working_place'
    ];
}
