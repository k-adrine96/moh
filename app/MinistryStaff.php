<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class MinistryStaff extends Model
{
    use Translatable;

    protected $fillable  = [
        'position',
        'name',
        'phone_number',
        'email'
    ];

    public $page_url = 'ministry-staff';

    protected $translatable = [
        'position',
        'name'
    ];
}
