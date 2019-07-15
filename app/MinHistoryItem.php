<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class MinHistoryItem extends Model
{
    use Translatable;

    protected $fillable = [
        'year',
        'name',
        'category_id'
    ];

    protected $Translatable = ['name'];

    public function category()
    {
        $this->belongsTo(MinHistoryCategory::Class, 'category_id', 'id');
    }
}

