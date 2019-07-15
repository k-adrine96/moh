<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class Admission extends Model
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

    protected $dates = ['file_date'];

    protected $Translatable = ['file_name'];

    public function getFileLinkAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return \Storage::url(json_decode($this->file_upload)[0]->download_link);
        }

        return $this->attributes['file_url'];
    }

    public function children() {
        $this->hasMany( Admission::class , 'parent_id' , 'id');
    }
}
