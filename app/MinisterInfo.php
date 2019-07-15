<?php

namespace App;

use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class MinisterInfo extends Model
{
    use Translatable;

    protected $fillable = [
        'name',
        'description',
        'category_id'
    ];

    protected $Translatable = ['description'];

    public function category()
    {
        return $this->belongsTo(MinisterInfoCategory::class, 'category_id', 'id');
    }
}
