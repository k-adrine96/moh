<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class LegalAct extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'date',
        'file_upload',
        'file_url',
        'type_id',
        'parent_id',
        'order'
    ];

    protected $dates = ['date'];

    protected $translatable = ['name'];

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
        return $this->hasMany( LegalAct::class , 'parent_id' , 'id');
    }
}
