<?php

namespace App;

use App;
use Illuminate\Database\Eloquent\Model;

class BaseModel extends Model
{

    public function getLastUpdate($model) {

        Event::listen(['eloquent.saved: *', 'eloquent.created: *' , 'eloquent.update: *'], function() {
            dd($this->updated_at);
        });
    }
}
