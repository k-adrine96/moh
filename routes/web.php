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


// Route::get('/', function () {
//     //dd(App\Car::get());
//     return view('home');
// })->name('home');



//Route::post('/', '@');

use Carbon\Carbon;
use Illuminate\Support\Facades\Route;

$locale = 'hy';
Carbon::setLocale($locale);
setlocale(LC_TIME, $locale);

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

//Route::view('/all-news', 'all-news')->name('all.news');
//Route::view('/announcement', 'announcement')->name('announcement');
//Route::view('/budget', 'budget')->name('budget');
//Route::view('/charter', 'charter')->name('charter');
//Route::view('/contact-us', 'contact-us')->name('contact.us');
//Route::view('/faq', 'faq')->name('faq');
//Route::view('/history', 'history')->name('history');
//Route::view('/legal-acts', 'legal-acts')->name('legal.acts');
//Route::view('/links', 'links')->name('links');
//Route::view('/minister-page', 'minister-page')->name('minister.page');
//Route::view('/minister-staff', 'minister-staff')->name('minister.staff');
//Route::view('/ministry-staff', 'ministry-staff')->name('ministry.staff');
//Route::view('/ministry-structure', 'ministry-structure')->name('ministry.structure');
//Route::view('/public-council', 'public-council')->name('public.council');
//Route::view('/single-news', 'single-news')->name('single.news');
//Route::view('/staff-list', 'staff-list')->name('staff.list');
//Route::view('/mission', 'mission')->name('text');
//Route::view('/videos', 'videos')->name('videos');

Route::get('/','PagesController@homepage')->name('home');
Route::get('/{page}','PagesController@index')->name('pages');
Route::get('/single-news/{id}','PagesController@showNewsIndividual')->name('show.news.individual');
Route::get('/single-announcement/{id}','PagesController@showAnnouncementIndividual')->name('show.announcement.individual');
Route::get('/single-video/{id}','PagesController@showVideoIndividual')->name('show.video.individual');