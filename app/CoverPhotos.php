<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class CoverPhotos extends Model
{
//    use Translatable;

    protected $fillable = [
        'page_name',
        'page_slug',
        'page_cover_photo'
    ];
}
