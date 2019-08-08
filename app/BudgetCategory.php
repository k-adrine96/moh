<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BudgetCategory extends BaseModel
{
    protected $fillable = [
        'year',
        'order'
    ];
}
