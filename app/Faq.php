<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Faq extends Model
{
    protected $fillable = [
        'question',
        'answer',
        'category_id',
        'order'
    ];

    public function category()
    {
        return $this->belongsTo(FaqCategory::class , 'category_id' , 'id');
    }
}
