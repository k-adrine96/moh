<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class MinisterStaff extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'position',
        'name',
        'phone_number',
        'email',
        'image',
        'text'
    ];

    public $page_url = 'minister-staff';

    protected $translatable = [
        'position',
        'name',
        'text'
    ];
}
