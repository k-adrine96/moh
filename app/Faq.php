<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class Faq extends Model
{
    use Translatable;

    protected $fillable = [
        'question',
        'answer',
        'category_id',
        'order'
    ];

    protected $Translatable = [
        'question',
        'answer'
    ];

    public function category()
    {
        return $this->belongsTo(FaqCategory::class , 'category_id' , 'id');
    }
}
