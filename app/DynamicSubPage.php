<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class DynamicSubPage extends Model
{
    use Translatable;
    protected $fillable = ['name', 'slug', 'order', 'display', 'dynamic_page_id'];
    protected $translatable = ['name'];

    public function files()
    {
        return $this->belongsToMany(DynamicPageFile::class, 'dynamic_intermediate_table',  'dynamic_sub_page_id');
    }
}
