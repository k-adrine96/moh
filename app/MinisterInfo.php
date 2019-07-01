<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MinisterInfo extends Model
{
    protected $fillable = [
        'name',
        'description',
        'category_id'
    ];

    public function category()
    {
        return $this->belongsTo(MinisterInfoCategory::class, 'category_id', 'id');
    }
}
