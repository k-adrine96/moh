<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class MinisterInfo extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'name',
        'description',
        'category_id'
    ];

    public $page_url = 'minister-page';

    protected $translatable = ['description'];

    public function category()
    {
        return $this->belongsTo(MinisterInfoCategory::class, 'category_id', 'id');
    }
}
