<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LinksCco extends Model
{
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
}
