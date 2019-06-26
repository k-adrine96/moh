<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use App\Videos;
use App\Report;
use App\LegalAct;
use App\Partners;
use App\Research;
use App\Statistic;
use App\PagesTexts;
use App\Informative;
use App\CoverPhotos;
use App\PressRelease;
use App\MinisterPage;
use App\MinisterInfo;
use App\LegalActsType;
use App\Announcements;
use App\MinisterStaff;
use App\MinistryStaff;
use App\HomepageSlider;
use App\MinHistoryItem;
use App\MinHistoryCategory;
use App\SpeechAndInterview;
use App\MinisterInfoCategory;

class PagesController extends Controller
{
    public function index(Request $request, $page)
    {
        $partnersRow1 = Partners::where('slider_row', 1)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();
        $partnersRow2 = Partners::where('slider_row', 2)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();

        if($page === 'minister-staff')
        {
            $content = MinisterStaff::orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'minister-staff')->first();

        }else if($page === 'ministry-staff')
        {
            $content = MinistryStaff::orderBy('order', 'asc')->orderBy('id', 'asc')->get();
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
            $educationInfos = MinisterInfo::where('category_id', 2)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $workInfos = MinisterInfo::where('category_id', 3)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $otherInfos = MinisterInfo::where('category_id', 4)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $pagesTexts = PagesTexts::where('page_slug', 'minister-page')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'minister-page')->first();

        }else if($page === 'charter')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'charter')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'charter')->first();

        }else if($page === 'all-news')
        {
            $content = News::orderBy('order', 'asc')->orderBy('date', 'asc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'all-news')->first();

        }else if($page === 'videos')
        {
            $content = Videos::orderBy('order', 'asc')->orderBy('date', 'asc')->get();

        }else if($page === 'announcement')
        {
            $content = Announcements::orderBy('order', 'asc')->orderBy('date', 'asc')->get();
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
            $minHistoryItems = MinHistoryItem::orderBy('order' , 'asc')->orderBy('id' , 'asc')->get();
            $minHistoryCats = MinHistoryCategory::orderBy('order' , 'asc')->orderBy('id' , 'asc')->get();

        }else if($page === 'legal-acts')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'legal-acts')->first();
            $legalActs = new LegalAct();

            if($request->type_id) {
                $legalActs = $legalActs->whereTypeId($request->type_id);
            }

            if($request->name) {
                $legalActs = $legalActs->where('name', 'like', '%'.$request->name.'%');
            }

            if($request->date) {
                $legalActs = $legalActs->where('date', $request->date);
            }

            $legalActs  = $legalActs->orderBy('order' , 'asc')->orderBy('id' , 'asc')->get();
            $actsTypes  = LegalActsType::orderBy('order' , 'asc')->orderBy('id' , 'asc')->get();

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
            $filesInfo = SpeechAndInterview::orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'speeches-interviews')->first();

        }else if($page === 'reports')
        {
            $filesInfo = Report::orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'reports')->first();

        }else if($page === 'press-release')
        {
            $filesInfo = PressRelease::orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'press-release')->first();

        }else if($page === 'researches')
        {
            $filesInfo = Research::orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'researches')->first();

        }else if($page === 'statistics')
        {
            $filesInfo = Statistic::orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'statistics')->first();
            
        }else if($page === 'informative')
        {
            $filesInfo = Informative::orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'informative')->first();

        }

        return view($page , compact('pagesTexts' , 'coverPhoto', 'content' ,
                                            'educationInfos' , 'workInfos' , 'otherInfos' ,
                                            'filesInfo' , 'partnersRow1' , 'partnersRow2' ,
                                            'minHistoryItems' , 'minHistoryCats' , 'legalActs' ,
                                            'actsTypes'));
    }

    public function homepage(){

     	$news = News::latest()->take(5)->get();
     	$videos = Videos::latest()->take(5)->get();
        $partnersRow1 = Partners::where('slider_row', 1)->get();
        $partnersRow2 = Partners::where('slider_row', 2)->get();
     	$announcements = Announcements::latest()->take(5)->get();
     	$slidersInfo = HomepageSlider::orderBy('order', 'asc')->orderBy('id', 'asc')->get();

        return view('home' , compact('slidersInfo' , 'news' , 'announcements' , 'videos', 'partnersRow1' , 'partnersRow2'));

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
