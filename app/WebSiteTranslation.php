<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class WebSiteTranslation extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'page_name',
        'page_slug',
        'text',
        'text_slug'
    ];

    protected $translatable = [
        'page_name',
        'text'
    ];
}
