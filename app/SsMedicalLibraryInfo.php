<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class SsMedicalLibraryInfo extends BaseModel
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
        'order'
    ];

    public $page_url = 'sub-structures-medical-library';

    protected $dates = ['file_date'];

    protected $translatable = [
        'organisation_name',
        'head_position',
        'head_name',
        'address'
    ];

    public function getFileLinkAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return \Storage::url(json_decode($this->file_upload)[0]->download_link);
        }

        return '';
    }
}
