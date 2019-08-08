<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class MinisterPage extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'minister_pic',
        'minister_personal_info_pic',
        'minister_personal_info_pic_title'
    ];

    protected $translatable = [
        'minister_personal_info_pic',
        'minister_personal_info_pic_title'
    ];
}