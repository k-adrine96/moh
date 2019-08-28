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

use App\Models\News;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Spatie\MediaLibrary\Media;


use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

Route::get('/test', function () {
    \Illuminate\Support\Facades\Artisan::call('cache:clear');
    \Illuminate\Support\Facades\Artisan::call('config:cache');
});

Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => [
        'localeSessionRedirect',
        'localizationRedirect',
        'localeViewPath'
    ]
],
function() {
    $locale = app()->getLocale();
    if($locale === 'ru') {
        setlocale (LC_ALL, 'ru_RU.UTF-8', 'Rus');
    } else {
        setlocale(LC_ALL, $locale);
    }

    Route::get('/', 'HomeController@getIndex');
    Route::get('/home', 'HomeController@getIndex');
    Route::get('/sitemap', 'HomeController@getSitemap');
    Route::get('/contact-us', 'HomeController@getContactUs');
    Route::get('/references', 'HomeController@getReferences');
    Route::get('/faq', 'HomeController@getFaqs');
    Route::get('/faq/{id}', 'HomeController@faqIndex');
    Route::get('/news', 'HomeController@news')->name('news');
    Route::get('/news/{id}', 'HomeController@newsIndex')->name('news.index');
    Route::get('/min-structure', 'HomeController@minStructure')->name('min-structure');
//    Route::get('/economic-policy', 'HomeController@economicPolicy')->name('economicPolicy');
    Route::get('/videos', 'HomeController@getVideos')->name('videos.index');
    Route::get('/videos/read-more/{id}', 'HomeController@getRedMore')->name('videos.read-more');
    Route::get('/search', 'HomeController@getSearch')->name('getSearch');
    Route::get('/employee/{id}', 'HomeController@getEmployee')->name('economic.employee');
    Route::post('/contact-us/send-mail', 'HomeController@mailSend')->name('contact-us.send-mail');
    Route::get('/tags/{tag}', 'HomeController@getTags')->name('tags');

    Route::get('/page/{slug}', 'HomeController@getSectionPage')->name('page');
    Route::get('/legal-act/{slug}', 'HomeController@legalAct')->name('legal-act');
    Route::get('/section/{slug}', 'HomeController@getSection')->name('section');

});

//Route::get('removeDomainOc25', function (){
//    $tables = DB::select('SHOW TABLES');
//    foreach ($tables as $table) {
//        $_table = $table->Tables_in_oc25_db;
//        $_columns = DB::getSchemaBuilder()->getColumnListing($_table);
//        foreach ($_columns as $column) {
//            $search = 'http://oc25.mgplab.com/';
//            $result = DB::table($_table)->where($column, 'LIKE', "%$search%")->get();
//            foreach ($result as $item) {
//                $_value = $item->$column;
//                $clear = str_replace($search, '/', $_value);
//                DB::table($_table)->where($column, $_value)->update([
//                    $column => $clear
//                ]);
//            }
//        }
//    }
//
//});
//
