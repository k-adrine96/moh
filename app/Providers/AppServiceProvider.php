<?php

namespace App\Providers;

use App\News;
use Carbon\Carbon;
use App\Announcements;
use App\Observers\NewsObserver;
use Illuminate\Support\Facades\Schema;
use App\Observers\AnnouncementObserver;
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

        Schema::defaultStringLength(191);
        $locales = [
            'hy' => 'hy_AM.utf8',
            'ru' => 'ru_RU',
            'en' => 'en'
        ];

        setlocale(LC_TIME, $locales[app()->getLocale()]);
        \Carbon\Carbon::setLocale($locales[app()->getLocale()]);

        News::observe(NewsObserver::class);
        Announcements::observe(AnnouncementObserver::class);
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {

    }
}
