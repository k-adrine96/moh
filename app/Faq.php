<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Faq extends Model
{
    use Translatable;

    protected $fillable = [
        'question',
        'answer',
        'category_id',
        'order'
    ];

    protected $translatable = [
        'question',
        'answer'
    ];

    public function category()
    {
        return $this->belongsTo(FaqCategory::class , 'category_id' , 'id');
    }
}
