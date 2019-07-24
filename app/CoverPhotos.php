<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CoverPhotos extends Model
{
    protected $fillable = [
        'page_name',
        'page_slug',
        'page_cover_photo'
    ];
}
