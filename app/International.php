<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class International extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'file_name',
        'file_upload',
        'file_url',
        'file_date',
        'parent_id',
        'order'
    ];

    public $page_url = 'international';

    protected $dates = ['file_date'];

    protected $translatable = ['file_name'];

    public function getFileLinkAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return \Storage::url(json_decode($this->file_upload)[0]->download_link);
        }

        return $this->attributes['file_url'];
    }

    public function children() {
        return $this->hasMany( International::class , 'parent_id' , 'id');
    }
}
