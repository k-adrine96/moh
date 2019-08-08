<?php

namespace App;

use App;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class BaseModel extends Model
{
    public static function boot()
    {
        parent::boot();

        self::created(function () {
            self::dateUpdate();
        });

        self::updated(function () {
            self::dateUpdate();
        });

        self::deleted(function () {
            self::dateUpdate();
        });
    }

    public static function dateUpdate()
    {
        \TCG\Voyager\Models\Setting::where('key', 'admin.last_update')->first()->update([
            'value' => Carbon::now()->format('d/m/Y H:i:s')
        ]);
    }
}