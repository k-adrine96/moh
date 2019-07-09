<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LegalAct extends Model
{
    protected $fillable = [
        'name',
        'date',
        'file_upload',
        'file_url',
        'type_id',
        'parent_id',
        'order'
    ];

    protected $dates = [
        'date'
    ];

    public function getFileLinkAttribute()
    {
        if($this->file_upload && $this->file_upload !== '[]') {
            return \Storage::url(json_decode($this->file_upload)[0]->download_link);
        }

        return $this->attributes['file_url'];
    }

    public function type()
    {
        return $this->belongsTo(LegalActsType::class, 'type_id', 'id');
    }

    public function children() {
        $this->hasMany( LegalAct::class , 'parent_id' , 'id');
    }
}
