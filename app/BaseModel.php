<?php

namespace App;

use App;
use Illuminate\Database\Eloquent\Model;

class BaseModel extends Model
{
    public function baseTranslate(){

        $this->with('translations');

        return $this;
    }
}
