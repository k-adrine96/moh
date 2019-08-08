<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class DynamicSection extends BaseModel
{
    use Translatable;
    protected $fillable = ['name', 'slug', 'order', 'display'];
    protected $translatable = ['name'];

    public function pages()
    {
        return $this->hasMany(DynamicPage::class, 'dynamic_section_id');
    }
}
