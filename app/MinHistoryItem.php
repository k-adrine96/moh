<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class MinHistoryItem extends BaseModel
{
    use Translatable;

    protected $fillable = [
        'year',
        'name',
        'category_id'
    ];

    protected $translatable = ['name'];

    public function category()
    {
        return $this->belongsTo(MinHistoryCategory::Class, 'category_id', 'id');
    }
}

