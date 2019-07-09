<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PcResult extends Model
{
    protected $fillable = [
        'year',
        'file_name',
        'file_upload',
        'file_url',
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

        return $this->attributes['file_url'];
    }
}
