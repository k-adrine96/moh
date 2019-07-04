<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LinksCoWorker extends Model
{
    protected $fillable = [
        'icon',
        'url',
        'order'
    ];
}
