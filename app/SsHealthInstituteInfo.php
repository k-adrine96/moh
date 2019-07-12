<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SsHealthInstituteInfo extends Model
{
    protected $fillable = [
        'organisation_name',
        'head_position',
        'head_name',
        'address',
        'phone_number',
        'email',
        'website_name',
        'website_url',
        'file_name',
        'file_upload',
        'file_date',
        'order'
    ];

    protected $dates = [
        'file_date'
    ];

    public function getFileLinkAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return \Storage::url(json_decode($this->file_upload)[0]->download_link);
        }

        return '';
    }
}
