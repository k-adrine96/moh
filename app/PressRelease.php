<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PressRelease extends Model
{
    protected $fillable  = [
        'file_name',
        'file_upload',
        'file_url',
        'file_icon',
        'file_date'
    ];

    protected $dates = [
        'file_date'
    ];

    public function getDownloadAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return 'download';
        }

        return '';
    }

    public function getFileLinkAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return \Storage::url(json_decode($this->file_upload)[0]->download_link);
        }

        return $this->attributes['file_url'];
    }
}
