<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class MinisterPage extends Model
{
    use Translatable;

    protected $fillable = [
        'minister_pic',
        'minister_personal_info_pic',
        'minister_personal_info_pic_title'
    ];

    protected $Translatable = [
        'minister_personal_info_pic',
        'minister_personal_info_pic_title'
    ];
}