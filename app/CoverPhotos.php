<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CoverPhotos extends BaseModel
{
    protected $fillable = [
        'page_name',
        'page_slug',
        'page_cover_photo'
    ];
}
