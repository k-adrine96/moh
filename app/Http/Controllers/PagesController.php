<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use App\Videos;
use App\Partners;
use App\PagesTexts;
use App\MinisterPage;
use App\MinisterInfo;
use App\HomepageSlider;
use App\Announcements;
use App\MinisterStaff;
use App\MinistryStaff;
use App\MinisterInfoCategory;

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
        }else if($page === 'minister-page')
        {
            $content = MinisterPage::first();
            $educationInfos = MinisterInfo::where('category_id', 2)->get();
            $workInfos = MinisterInfo::where('category_id', 3)->get();
            $otherInfos = MinisterInfo::where('category_id', 4)->get();
            $pagesTexts = PagesTexts::where('page_slug', 'minister-page')->first();
        }else if($page === 'charter')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'charter')->first();
        }

        return view($page , compact('content' , 'partners' , 'pagesTexts' , 'educationInfos' , 'workInfos' , 'otherInfos'));
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
