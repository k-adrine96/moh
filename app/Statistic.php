<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Statistic extends BaseModel
{
    use Translatable;

    protected $fillable  = [
        'file_name',
        'file_upload',
        'file_url',
        'file_date'
    ];

    public $page_url = 'statistics';

    protected $dates = ['file_date'];

    protected $translatable = [ 'file_name' ];

    public function getFileLinkAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return \Storage::url(json_decode($this->file_upload)[0]->download_link);
        }

        return $this->attributes['file_url'];
    }
}
