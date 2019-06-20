<?php

namespace App\Providers;

use Carbon\Carbon;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        Schema::defaultStringLength(191);
        $locales = [
            'hy' => 'hy_AM.utf8',
            'ru' => 'ru_RU',
            'en' => 'en'
        ];

        setlocale(LC_TIME, $locales[app()->getLocale()]);
        \Carbon\Carbon::setLocale($locales[app()->getLocale()]);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
