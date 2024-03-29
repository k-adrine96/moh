<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class DynamicPage extends BaseModel
{
    use Translatable;
    protected $fillable = ['display', 'order', 'name', 'slug', 'dynamic_section_id', 'video', 'cover_photo'];
    public $translatable = ['name'];

    public function files()
    {
        return $this->belongsToMany(DynamicPageFile::class, 'dynamic_intermediate_table',  'dynamic_page_id');
    }

    public function section()
    {
        return $this->belongsTo(DynamicSection::class, 'dynamic_section_id');
    }

    public function subpages()
    {
        return $this->hasMany(DynamicSubPage::class, 'dynamic_page_id');
    }
}
