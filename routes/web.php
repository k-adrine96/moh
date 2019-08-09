<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


use Carbon\Carbon;
use Illuminate\Support\Facades\Route;

//$locale = 'hy';
Carbon::now()->setLocale(config('app.locale'));
setlocale(LC_TIME, config('app.locale'));

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ],
    function() {
        Route::get('/', 'PagesController@homepage')->name('home');
        Route::get('/{page}', 'PagesController@index')->name('pages');
        Route::get('/single-news/{id}', 'PagesController@showNewsIndividual')->name('show.news.individual');
        Route::get('/single-announcement/{id}', 'PagesController@showAnnouncementIndividual')->name('show.announcement.individual');
        Route::get('/single-video/{id}', 'PagesController@showVideoIndividual')->name('show.video.individual');
        Route::get('page/{page}', 'PagesController@page')->name('show.page');
        Route::get('/{section}/{page}', 'PagesController@pageSection')->name('show.section.page');
        Route::get('/{section}/{page}/{sub}', 'PagesController@subPage')->name('show.section.page.sub');
        Route::post('/file-upload', 'PagesController@fileUpload');
        Route::post('subscribe', 'PagesController@subscribe')->name('subscribe');
});