<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class DynamicPageFile extends BaseModel
{
    use Translatable;
    protected $fillable = ['name', 'file', 'file_url' , 'date', 'parent_id' , 'order'];

    protected $dates = ['date'];

    protected $translatable = ['name'];

    public function getFileLinkAttribute()
    {
        if($this->file && $this->file !== '[]') {
            return \Storage::url(json_decode($this->file)[0]->download_link);
        }

        return $this->attributes['file_url'];
    }

    public function children() {
        return $this->hasMany( DynamicPageFile::class , 'parent_id' , 'id');
    }
}
