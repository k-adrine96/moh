<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AntiCorruptionEvent extends Model
{
    protected $fillable = [
        'file_name',
        'file_upload',
        'file_url',
        'file_date',
        'parent_id',
        'order'
    ];

    protected $dates = [
        'file_date'
    ];

    public function getFileLinkAttribute()
    {
        return \Storage::url(json_decode($this->file_upload)[0]->download_link);
    }

    public function children() {
        $this->hasMany( AntiCorruptionEvent::class , 'parent_id' , 'id');
    }
}
