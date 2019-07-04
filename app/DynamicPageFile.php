<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class DynamicPageFile extends model
{
    use Translatable;
    protected $fillable = ['name', 'file', 'date', 'order'];
    protected $translatable = ['name'];
}
