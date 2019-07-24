<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class PagesTexts extends Model
{
    use Translatable;

    protected $fillable = [
        'page_name',
        'page_slug',
        'page_text1',
        'page_text2',
        'page_text3'
    ];

    protected $translatable = [
        'page_text1',
        'page_text2',
        'page_text3'
    ];
}
