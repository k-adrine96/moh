<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DynamicIntermediateTable extends Model
{
    protected $fillable = ['file_id', 'page_id'];
}
