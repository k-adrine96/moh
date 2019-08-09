<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class LinksCco extends BaseModel
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

    public $page_url = 'links';

    protected $translatable = [
        'description',
        'address'
    ];
}
