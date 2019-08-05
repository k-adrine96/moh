<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class SsHealthInstituteInfo extends Model
{
    use Translatable;

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

    public $page_url = 'sub-structures-health-institute';

    protected $dates = ['file_date'];

    protected $translatable = [
        'organisation_name',
        'head_position',
        'head_name',
        'address',
        'file_name'
    ];

    public function getFileLinkAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return \Storage::url(json_decode($this->file_upload)[0]->download_link);
        }

        return '';
    }
}
