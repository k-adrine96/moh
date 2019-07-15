<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class LinksCco extends Model
{
    use Translatable;

    protected $fillable = [
    	'icon',
        'description',
        'address',
        'phone_number',
        'email',
        'website_name',
        'website_url',
        'order'
    ];

    protected $Translatable = [
        'description',
        'address'
    ];
}
