<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use App\Videos;
use App\Report;
use App\Partners;
use App\PagesTexts;
use App\CoverPhotos;
use App\PressRelease;
use App\MinisterPage;
use App\MinisterInfo;
use App\Announcements;
use App\MinisterStaff;
use App\MinistryStaff;
use App\HomepageSlider;
use App\SpeechAndInterview;
use App\MinisterInfoCategory;

class PagesController extends Controller
{
    public function index($page)
    {
        $partners = Partners::get();

        if($page === 'minister-staff')
        {
            $content = MinisterStaff::get();
            $coverPhoto = CoverPhotos::where('page_slug', 'minister-staff')->first();
        }else if($page === 'ministry-staff')
        {
            $content = MinistryStaff::get();
            $coverPhoto = CoverPhotos::where('page_slug', 'ministry-staff')->first();
        }else if($page === 'mission')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'mission')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'mission')->first();
        }else if($page === 'contact-us')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'contact-us')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'contact-us')->first();
        }else if($page === 'minister-page')
        {
            $content = MinisterPage::first();
            $educationInfos = MinisterInfo::where('category_id', 2)->get();
            $workInfos = MinisterInfo::where('category_id', 3)->get();
            $otherInfos = MinisterInfo::where('category_id', 4)->get();
            $pagesTexts = PagesTexts::where('page_slug', 'minister-page')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'minister-page')->first();
        }else if($page === 'charter')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'charter')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'charter')->first();
        }else if($page === 'all-news')
        {
            $content = News::get();
            $coverPhoto = CoverPhotos::where('page_slug', 'all-news')->first();
        }else if($page === 'videos')
        {
            $content = Videos::get();
        }else if($page === 'announcement')
        {
            $content = Announcements::get();
            $coverPhoto = CoverPhotos::where('page_slug', 'announcement')->first();
        }else if($page === 'budget')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'budget')->first();
        }else if($page === 'faq')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'faq')->first();
        }else if($page === 'history')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'history')->first();
        }else if($page === 'legal-acts')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'legal-acts')->first();
        }else if($page === 'links')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'links')->first();
        }else if($page === 'ministry-structure')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'ministry-structure')->first();
        }else if($page === 'public-council')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'public-council')->first();
        }else if($page === 'staff-list')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'staff-list')->first();
        }else if($page === 'speeches-interviews')
        {
            $filesInfo = SpeechAndInterview::get();
            $coverPhoto = CoverPhotos::where('page_slug', 'speeches-interviews')->first();
        }else if($page === 'reports')
        {
            $filesInfo = Report::get();
            $coverPhoto = CoverPhotos::where('page_slug', 'reports')->first();
        }else if($page === 'press-release')
        {
            $filesInfo = PressRelease::get();
            $coverPhoto = CoverPhotos::where('page_slug', 'press-release')->first();
        }

        return view($page , compact('pagesTexts' , 'coverPhoto', 'content' , 'partners' , 'educationInfos' , 'workInfos' , 'otherInfos' , 'filesInfo'));
    }

    public function homepage(){

     	$slidersInfo = HomepageSlider::get();
     	$news = News::latest()->take(5)->get();
     	$announcements = Announcements::latest()->take(5)->get();
     	$videos = Videos::latest()->take(5)->get();
     	$partners = Partners::get();

        return view('home' , compact('slidersInfo' , 'news' , 'announcements' , 'videos', 'partners'));

    }

    public function showNewsIndividual($id){
        $coverPhoto = CoverPhotos::where('page_slug', 'single-news')->first();
        $newsIndividual = News::where('id', $id)->first();
        return view('single-news' , compact('newsIndividual' , 'coverPhoto'));
    }

    public function showAnnouncementIndividual($id){
        $announcementIndividual = Announcements::where('id', $id)->first();
        $coverPhoto = CoverPhotos::where('page_slug', 'single-announcement')->first();
        return view('single-announcement' , compact('announcementIndividual' , 'coverPhoto'));
    }

    public function showVideoIndividual($id){
        $videoIndividual = Videos::where('id', $id)->first();
        $coverPhoto = CoverPhotos::where('page_slug', 'single-video')->first();
        return view('single-video' , compact('videoIndividual' , 'coverPhoto'));
    }
}
