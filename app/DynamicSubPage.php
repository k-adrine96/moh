<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class DynamicSubPage extends BaseModel
{
    use Translatable;
    protected $fillable = ['name', 'slug', 'order', 'display', 'dynamic_page_id', 'video', 'cover_photo'];
    protected $translatable = ['name'];

    public function files()
    {
        return $this->belongsToMany(DynamicPageFile::class, 'dynamic_sub_page_intermediate',  'dynamic_sub_page_id');
    }

    public function page()
    {
        return $this->belongsTo(DynamicPage::class, 'dynamic_page_id');
    }

    public function section()
    {
        return $this->page->section ? $this->page->section : false;
    }
}
