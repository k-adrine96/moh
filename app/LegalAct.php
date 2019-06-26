<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LegalAct extends Model
{
    protected $fillable = [
        'name',
        'date',
        'file_upload',
        'icon',
        'type_id'
    ];

    public function type()
    {
        return $this->belongsTo(LegalActsType::class, 'type_id', 'id');
    }

    public function getFileLinkAttribute()
    {
        return \Storage::url(json_decode($this->file_upload)[0]->download_link);
    }
}
