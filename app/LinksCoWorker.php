<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LinksCoWorker extends BaseModel
{
    protected $fillable = [
        'icon',
        'url',
        'order'
    ];
}
