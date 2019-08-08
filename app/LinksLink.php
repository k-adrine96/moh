<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class LinksLink extends BaseModel
{
    use Translatable;
    protected $fillable = [
        'name',
        'website_name',
        'website_url',
        'type',
        'order'
    ];

    public $page_url = 'links';

    protected $translatable = [
        'name',
    ];
}
