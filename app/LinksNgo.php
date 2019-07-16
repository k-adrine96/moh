<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class LinksNgo extends Model
{
    use Translatable;

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

    protected $translatable = [
        'ngo_name',
        'head_position',
        'head_name',
        'address'
    ];
}
