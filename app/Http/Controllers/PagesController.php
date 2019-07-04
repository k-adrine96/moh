<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
use App\Videos;
use App\Report;
use App\Politics;
use App\Superior;
use App\National;
use App\LegalAct;
use App\Partners;
use App\Research;
use App\LinksNgo;
use App\LinksCco;
use App\Screening;
use App\LinksLink;
use App\Statistic;
use App\Admission;
use App\StateOrder;
use App\PagesTexts;
use App\Informative;
use App\CoverPhotos;
use App\PressRelease;
use App\MinisterPage;
use App\MinisterInfo;
use App\International;
use App\LinksCoWorker;
use App\LegalActsType;
use App\Announcements;
use App\MinisterStaff;
use App\MinistryStaff;
use App\HomepageSlider;
use App\MinHistoryItem;
use App\MinHistoryCategory;
use App\SpeechAndInterview;
use App\AntiCorruptionEvent;
use App\MinisterInfoCategory;
use App\AdvertisingPermission;
use App\LicensDocumentsApplication;

class PagesController extends Controller
{
    public function index(Request $request, $page)
    {
        $partnersRow1 = Partners::where('slider_row', 1)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();
        $partnersRow2 = Partners::where('slider_row', 2)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();

        if($page === 'minister-staff')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'minister-staff')->first();
            $content    = MinisterStaff::orderBy('order', 'asc')->orderBy('id', 'asc')->get();

        }else if($page === 'ministry-staff')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'ministry-staff')->first();
            $content    = MinistryStaff::orderBy('order', 'asc')->orderBy('id', 'asc')->get();

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
            $content        = MinisterPage::first();
            $pagesTexts     = PagesTexts::where('page_slug', 'minister-page')->first();
            $coverPhoto     = CoverPhotos::where('page_slug', 'minister-page')->first();
            $educationInfos = MinisterInfo::where('category_id', 2)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $workInfos      = MinisterInfo::where('category_id', 3)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();
            $otherInfos     = MinisterInfo::where('category_id', 4)->orderBy('order', 'asc')->orderBy('id', 'asc')->get();

        }else if($page === 'charter')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'charter')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'charter')->first();

        }else if($page === 'all-news')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'all-news')->first();
            $content    = News::orderBy('order', 'asc')->orderBy('date', 'desc')->get();

        }else if($page === 'videos')
        {
            $content = Videos::orderBy('order', 'asc')->orderBy('date', 'desc')->get();

        }else if($page === 'announcement')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'announcement')->first();
            $content    = Announcements::orderBy('order', 'asc')->orderBy('date', 'desc')->get();

        }else if($page === 'budget')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'budget')->first();

        }else if($page === 'faq')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'faq')->first();

        }else if($page === 'history')
        {
            $coverPhoto      = CoverPhotos::where('page_slug', 'history')->first();
            $minHistoryItems = MinHistoryItem::orderBy('order' , 'asc')->orderBy('id' , 'asc')->get();
            $minHistoryCats  = MinHistoryCategory::orderBy('order' , 'asc')->orderBy('id' , 'asc')->get();

        }else if($page === 'links')
        {
            $coverPhoto     = CoverPhotos::where('page_slug', 'links')->first();
            $LinksNgos      = LinksNgo::orderBy('order', 'asc')->orderBy('id', 'desc')->get();
            $LinksCcos      = LinksCco::orderBy('order', 'asc')->orderBy('id', 'desc')->get();
            $LinksLinks     = LinksLink::orderBy('order', 'asc')->orderBy('id', 'desc')->get();
            $LinksCoWorkers = LinksCoWorker::orderBy('order', 'asc')->orderBy('id', 'desc')->get();

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
            $coverPhoto = CoverPhotos::where('page_slug', 'speeches-interviews')->first();
            $filesInfo  = SpeechAndInterview::orderBy('order', 'asc')->orderBy('date', 'desc')->get();

        }else if($page === 'reports')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'reports')->first();
            $filesInfo  = Report::orderBy('order', 'asc')->orderBy('date', 'desc')->get();

        }else if($page === 'press-release')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'press-release')->first();
            $filesInfo  = PressRelease::orderBy('order', 'asc')->orderBy('date', 'desc')->get();

        }else if($page === 'researches')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'researches')->first();
            $filesInfo  = Research::orderBy('order', 'asc')->orderBy('date', 'desc')->get();

        }else if($page === 'statistics')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'statistics')->first();
            $filesInfo  = Statistic::orderBy('order', 'asc')->orderBy('date', 'desc')->get();

        }else if($page === 'informative')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'informative')->first();
            $filesInfo  = Informative::orderBy('order', 'asc')->orderBy('date', 'desc')->get();

        }else if($page === 'legal-acts')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'legal-acts')->first();
            $legalActs  = new LegalAct();

            if($request->type_id) {
                $legalActs = $legalActs->whereTypeId($request->type_id);
            }

            if($request->name) {
                $legalActs = $legalActs->where('name', 'like', '%'.$request->name.'%');
            }

            if($request->date) {
                $legalActs = $legalActs->where('date', $request->date);
            }

            $parents = $legalActs->orderBy('order' , 'asc')->orderBy('date', 'desc')->whereNull('parent_id')->get();
            $filesInfo = $legalActs->orderBy('order' , 'asc')->orderBy('date', 'desc')->whereNotNull('parent_id')->get();
            $actsTypes = LegalActsType::orderBy('order' , 'asc')->get();

        }else if($page === 'politics')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'politics')->first();
            $parents  = Politics::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = Politics::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'superior')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'superior')->first();
            $parents  = Superior::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = Superior::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'national')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'national')->first();
            $parents  = National::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = National::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'international')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'international')->first();
            $parents  = International::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = International::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'screening')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'screening')->first();
            $parents  = Screening::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = Screening::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'anti-corruption-events')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'anti-corruption-events')->first();
            $parents  = AntiCorruptionEvent::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = AntiCorruptionEvent::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'licens-documents-application')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'licens-documents-application')->first();
            $parents  = LicensDocumentsApplication::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = LicensDocumentsApplication::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'advertising-permission')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'advertising-permission')->first();
            $parents  = AdvertisingPermission::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = AdvertisingPermission::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'state-order')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'state-order')->first();
            $parents  = StateOrder::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = StateOrder::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'admission')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'admission')->first();
            $parents  = Admission::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = Admission::orderBy('order', 'asc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }

        return view($page , compact('pagesTexts' , 'coverPhoto', 'content' ,
                                            'educationInfos' , 'workInfos' , 'otherInfos' ,
                                            'filesInfo' , 'partnersRow1' , 'partnersRow2' ,
                                            'minHistoryItems' , 'minHistoryCats' , 'legalActs' ,
                                            'actsTypes' , 'LinksCoWorkers' , 'LinksNgos' , 'LinksCcos' , 'LinksLinks' , 'parents'));
    }

    public function homepage(){

     	$news          = News::latest()->take(5)->get();
     	$videos        = Videos::latest()->take(5)->get();
        $partnersRow1  = Partners::where('slider_row', 1)->get();
        $partnersRow2  = Partners::where('slider_row', 2)->get();
     	$announcements = Announcements::latest()->take(5)->get();
     	$slidersInfo   = HomepageSlider::orderBy('order', 'asc')->orderBy('id', 'asc')->get();

        return view('home' , compact('slidersInfo' , 'news' , 'announcements' , 'videos', 'partnersRow1' , 'partnersRow2'));

    }

    public function showNewsIndividual($id){

        $newsIndividual = News::where('id', $id)->first();
        $partnersRow1   = Partners::where('slider_row', 1)->get();
        $partnersRow2   = Partners::where('slider_row', 2)->get();
        $coverPhoto     = CoverPhotos::where('page_slug', 'single-news')->first();

        return view('single-news' , compact('newsIndividual' , 'coverPhoto', 'partnersRow1' , 'partnersRow2'));
    }

    public function showAnnouncementIndividual($id){

        $partnersRow1           = Partners::where('slider_row', 1)->get();
        $partnersRow2           = Partners::where('slider_row', 2)->get();
        $announcementIndividual = Announcements::where('id', $id)->first();
        $coverPhoto             = CoverPhotos::where('page_slug', 'single-announcement')->first();

        return view('single-announcement' , compact('announcementIndividual' , 'coverPhoto', 'partnersRow1' , 'partnersRow2'));
    }

    public function showVideoIndividual($id){

        $videoIndividual = Videos::where('id', $id)->first();
        $partnersRow1    = Partners::where('slider_row', 1)->get();
        $partnersRow2    = Partners::where('slider_row', 2)->get();
        $coverPhoto      = CoverPhotos::where('page_slug', 'single-video')->first();

        return view('single-video' , compact('videoIndividual' , 'coverPhoto' , 'partnersRow1' , 'partnersRow2'));
    }

    public function fileUpload(Request $request)
    {
        return $request->all();
    }
}
