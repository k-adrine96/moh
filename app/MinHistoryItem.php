<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MinHistoryItem extends Model
{
    protected $fillable = [
        'year',
        'name',
        'category_id'
    ];

    public function category()
    {
        $this->belongsTo(MinHistoryCategory::Class, 'category_id', 'id');
    }
}

