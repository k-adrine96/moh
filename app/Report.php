<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    protected $fillable = [
        'file_name',
        'file_upload',
        'file_url',
        'file_icon',
        'file_date'
    ];

    protected $dates = [
        'file_date'
    ];
}
