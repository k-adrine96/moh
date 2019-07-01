<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LegalAct extends Model
{
    protected $fillable = [
        'name',
        'date',
        'file_upload',
        'type_id'
    ];

    protected $dates = [
        'date'
    ];

    public function getFileLinkAttribute()
    {
        return \Storage::url(json_decode($this->file_upload)[0]->download_link);
    }

    public function type()
    {
        return $this->belongsTo(LegalActsType::class, 'type_id', 'id');
    }
}