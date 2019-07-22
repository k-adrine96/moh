<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DynamicIntermediateTable extends BaseModel
{
    protected $fillable = ['file_id', 'page_id'];
}
