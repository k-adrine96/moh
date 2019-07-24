<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class LinksLink extends Model
{
    use Translatable;
    protected $fillable = [
        'name',
        'website_name',
        'website_url',
        'type',
        'order'
    ];

    protected $translatable = [
        'name',
    ];
}
