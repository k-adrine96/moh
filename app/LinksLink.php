<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LinksLink extends Model
{
    protected $fillable = [
        'name',
        'website_name',
        'website_url',
        'type',
        'order'
    ];
}
