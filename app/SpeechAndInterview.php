<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SpeechAndInterview extends Model
{
    protected $fillable  = [
        'file_name',
        'file_upload',
        'file_url',
        'file_icon',
        'file_date'
    ];
}
