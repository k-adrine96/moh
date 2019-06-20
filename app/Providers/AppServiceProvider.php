<?php

namespace App\Providers;

use Carbon\Carbon;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
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
