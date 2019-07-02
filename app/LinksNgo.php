<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LinksNgo extends Model
{
    protected $fillable = [
        'ngo_name',
		'head_position',
		'head_name',
		'address',
		'phone_number',
		'email',
		'website_name',
		'website_url',
		'order'
    ];
}
