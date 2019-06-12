<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use App\Videos;
use App\Partners;
use App\HomepageSlider;
use App\Announcements;
use App\MinisterStaff;
use App\MinistryStaff;
use App\PagesTexts;

class PagesController extends Controller
{
    public function index($page)
    {
        $partners = Partners::get();

        if($page === 'minister-staff')
        {
            $content = MinisterStaff::get();
        }else if($page === 'ministry-staff')
        {
            $content = MinistryStaff::get();
        }else if($page === 'mission')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'mission')->first();
        }else if($page === 'contact-us')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'contact-us')->first();
        }

        return view($page , compact('content' , 'partners' , 'pagesTexts'));
    }

    public function homepage(){

     	$slidersInfo = HomepageSlider::get();
     	$news = News::latest()->take(5)->get();
     	$announcements = Announcements::latest()->take(5)->get();
     	$videos = Videos::latest()->take(5)->get();
     	$partners = Partners::get();

        return view('home' , compact('slidersInfo' , 'news' , 'announcements' , 'videos', 'partners'));

    }
}
