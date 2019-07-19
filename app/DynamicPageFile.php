<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class DynamicPageFile extends model
{
    use Translatable;
    protected $fillable = ['name', 'file', 'date', 'order'];
    protected $translatable = ['name'];

    public function getFileLinkAttribute()
    {
        if($this->file && $this->file !== '[]') {
            return \Storage::url(json_decode($this->file)[0]->download_link);
        }
        return true;
    }
}
