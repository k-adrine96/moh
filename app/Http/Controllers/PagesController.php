<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use App, App\Faq, App\News, App\Videos, App\Budget, App\Report;
use App\PcStaff, App\PcAppeal, App\PcResult, App\Politics;
use App\Superior, App\National, App\LegalAct, App\Partners;
use App\Research, App\LinksNgo, App\LinksCco, App\PcSession;
use App\Screening, App\LinksLink, App\Statistic, App\Admission;
use App\StateOrder, App\PagesTexts, App\SsOtherOrg, App\DynamicPage;
use App\Informative, App\CoverPhotos, App\FaqCategory, App\PressRelease;
use App\MinisterPage, App\MinisterInfo, App\International, App\LinksCoWorker;
use App\LegalActsType, App\Announcements, App\MinisterStaff, App\MinistryStaff;
use App\MohConsultant, App\DynamicSection, App\LicenseOrgFile, App\LicenseOrgInfo;
use App\BudgetCategory, App\HomepageSlider, App\MinHistoryItem, App\YourRightsFile;
use App\SsHealthInstituteInfo, App\StaffingJobAcceptance, App\AdvertisingPermission;
use App\SsStationeryOrg, App\YourRightsVideo, App\StaffingVacancy, App\StaffingStaffList;
use App\SsDrugMedicalExpertFile, App\SsDrugMedicalExpertInfo, App\LicensDocumentsApplication;
use App\MinHistoryCategory, App\SpeechAndInterview, App\AntiCorruptionEvent, App\StaffingTenderResult;
use App\SsMedicalLibraryFile, App\SsMedicalLibraryInfo, App\MinisterInfoCategory, App\SsHealthInstituteFile;

class PagesController extends Controller
{
    public function index(Request $request, $page)
    {
        $partnersRow1 = Partners::where('slider_row', 1)->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
        $partnersRow2 = Partners::where('slider_row', 2)->orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        if($page === 'minister-staff')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'minister-staff')->first();
            $content    = ( new MinisterStaff )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'ministry-staff')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'ministry-staff')->first();
            $content    = ( new MinistryStaff )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'mission')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'mission')->first();
            $pagesTexts = ( new PagesTexts )->baseTranslate()->where('page_slug', 'mission')->first();

        }else if($page === 'contact-us')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'contact-us')->first();
            $pagesTexts = ( new PagesTexts )->baseTranslate()->where('page_slug', 'contact-us')->first();

        }else if($page === 'minister-page')
        {
            $coverPhoto      = CoverPhotos::where('page_slug', 'minister-page')->first();
            $content         = ( new MinisterPage )->baseTranslate()->first();
            $pagesTexts      = ( new PagesTexts )->baseTranslate()->where('page_slug', 'minister-page')->first();
            $minInfoItems    = ( new MinisterInfo )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $minInfoCats     = ( new MinisterInfoCategory )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'asc')->get();

        }else if($page === 'charter')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'charter')->first();
            $pagesTexts = ( new PagesTexts )->baseTranslate()->where('page_slug', 'charter')->first();

        }else if($page === 'all-news')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'all-news')->first();
            $content    = ( new News )->baseTranslate()->orderBy('order', 'desc')->orderBy('date', 'desc')->get();

        }else if($page === 'videos')
        {
            $content = ( new Videos )->baseTranslate()->orderBy('order', 'desc')->orderBy('date', 'desc')->get();

        }else if($page === 'announcement')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'announcement')->first();
            $content    = ( new Announcements )->baseTranslate()->orderBy('order', 'desc')->orderBy('date', 'desc')->get();

        }else if($page === 'budget')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'budget')->first();
            $filesCats  = BudgetCategory::orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();
            $filesInfo  = ( new Budget )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'faq')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'faq')->first();
            $faqs = ( new Faq )->baseTranslate()->orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();
            $faqCategories  = ( new FaqCategory )->baseTranslate()->orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();


        }else if($page === 'history')
        {
            $coverPhoto      = CoverPhotos::where('page_slug', 'history')->first();
            $minHistoryItems = ( new MinHistoryItem )->baseTranslate()->orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();
            $minHistoryCats  = ( new MinHistoryCategory )->baseTranslate()->orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();

        }else if($page === 'links')
        {
            $coverPhoto     = CoverPhotos::where('page_slug', 'links')->first();
            $LinksNgos      = ( new LinksNgo )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $LinksCcos      = ( new LinksCco )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $LinksLinks     = ( new LinksLink )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $LinksCoWorkers = LinksCoWorker::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'ministry-structure')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'ministry-structure')->first();

        }else if($page === 'moh-consultants')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'moh-consultants')->first();
            $content    = ( new MohConsultant )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'sub-structures-stationery-orgs')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-stationery-orgs')->first();
            $content    = ( new SsStationeryOrg )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'sub-structures-other-orgs')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-other-orgs')->first();
            $content    = ( new SsOtherOrg )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'public-council')
        {
            $coverPhoto  = CoverPhotos::where('page_slug', 'public-council')->first();
            $PcStaffs    = ( new PcStaff )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();
            $PcAppeals   = ( new PcAppeal )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();
            $PcResults   = ( new PcResult )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();
            $PcSessions  = ( new PcSession )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'speeches-interviews')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'speeches-interviews')->first();
            $filesInfo  = ( new SpeechAndInterview )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'reports')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'reports')->first();
            $filesInfo  = ( new Report )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'press-release')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'press-release')->first();
            $filesInfo  = ( new PressRelease )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'researches')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'researches')->first();
            $filesInfo  = ( new Research )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'statistics')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'statistics')->first();
            $filesInfo  = ( new Statistic )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'informative')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'informative')->first();
            $filesInfo  = ( new Informative )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

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
                $legalActs = ( new $legalActs )->baseTranslate()->where('date', $request->date);
            }

            $actsTypes = LegalActsType::orderBy('order' , 'desc')->get();
            $parents   = ( new $legalActs )->baseTranslate()->orderBy('order' , 'desc')->orderBy('date', 'desc')->whereNull('parent_id')->get();
            $filesInfo = ( new $legalActs )->baseTranslate()->orderBy('order' , 'desc')->orderBy('date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'politics')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'politics')->first();
            $parents    = ( new Politics )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new Politics )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'superior')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'superior')->first();
            $parents    = ( new Superior )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new Superior )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'national')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'national')->first();
            $parents    = ( new National )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new National )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'international')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'international')->first();
            $parents    = ( new International )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new International )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'screening')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'screening')->first();
            $parents    = ( new Screening )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new Screening )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'anti-corruption-events')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'anti-corruption-events')->first();
            $parents    = ( new AntiCorruptionEvent )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new AntiCorruptionEvent )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'licens-documents-application')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'licens-documents-application')->first();
            $parents    = ( new LicensDocumentsApplication )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new LicensDocumentsApplication )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'advertising-permission')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'advertising-permission')->first();
            $parents    = ( new AdvertisingPermission )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new AdvertisingPermission )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'state-order')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'state-order')->first();
            $parents    = ( new StateOrder )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new StateOrder )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'admission')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'admission')->first();
            $parents    = (new Admission)->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = (new Admission)->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'staffing-staff-list')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'staffing-staff-list')->first();
            $parents    = ( new StaffingStaffList )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new StaffingStaffList )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'staffing-vacancy')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'staffing-vacancy')->first();
            $parents    = ( new StaffingVacancy )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new StaffingVacancy )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'staffing-tender-results')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'staffing-tender-results')->first();
            $parents    = ( new StaffingTenderResult )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new StaffingTenderResult )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'staffing-job-acceptance')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'staffing-job-acceptance')->first();
            $parents    = ( new StaffingJobAcceptance )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new StaffingJobAcceptance )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'your-rights')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'your-rights')->first();
            $content    = ( new YourRightsVideo )->baseTranslate()->orderBy('order', 'desc')->orderBy('date', 'desc')->orderBy('id', 'desc')->get();
            $parents    = ( new YourRightsFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new YourRightsFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'license-organization')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'license-organization')->first();
            $pagesTexts = ( new PagesTexts )->baseTranslate()->where('page_slug', 'license-organization')->first();
            $content    = ( new LicenseOrgInfo )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = ( new LicenseOrgFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new LicenseOrgFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'sub-structures-health-institute')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-health-institute')->first();
            $pagesTexts = ( new PagesTexts )->baseTranslate()->where('page_slug', 'sub-structures-health-institute')->first();
            $content    = ( new SsHealthInstituteInfo )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = ( new SsHealthInstituteFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new SsHealthInstituteFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'sub-structures-drug-medical-expertise')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-drug-medical-expertise')->first();
            $pagesTexts = ( new PagesTexts )->baseTranslate()->where('page_slug', 'sub-structures-drug-medical-expertise')->first();
            $content    = ( new SsDrugMedicalExpertInfo )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = ( new SsDrugMedicalExpertFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new SsDrugMedicalExpertFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'sub-structures-medical-library')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-medical-library')->first();
            $pagesTexts = ( new PagesTexts )->baseTranslate()->where('page_slug', 'sub-structures-medical-library')->first();
            $content    = ( new SsMedicalLibraryInfo )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = ( new SsMedicalLibraryFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = ( new SsMedicalLibraryFile )->baseTranslate()->orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }

        return view($page , compact('pagesTexts' , 'coverPhoto', 'content' ,
                                            'minInfoItems' , 'minInfoCats' , 'filesInfo' , 'filesCats' ,
                                            'partnersRow1' , 'partnersRow2' , 'minHistoryItems' ,
                                            'minHistoryCats' , 'legalActs' , 'actsTypes' , 'LinksCoWorkers' ,
                                            'LinksNgos' , 'LinksCcos' , 'LinksLinks' , 'parents' , 'faqs' ,
                                            'faqCategories' , 'PcStaffs' , 'PcAppeals' , 'PcResults' , 'PcSessions'));
    }

    public function homepage(){

     	$news          = News::latest()->take(5)->get();
     	$videos        = Videos::latest()->take(5)->get();
        $partnersRow1  = Partners::where('slider_row', 1)->get();
        $partnersRow2  = Partners::where('slider_row', 2)->get();
        $announcements = Announcements::latest()->take(5)->get();
        $slidersInfo   = HomepageSlider::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

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

    public function pageSection($section, $page)
    {
        $section = ( new DynamicSection )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->whereSlug($section)->firstOrFail();
        $page = ( new DynamicPage )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->whereSlug($page)->firstOrFail();

        return view('partials.dynamic-page.page', compact('page'));
    }

    public function subPage($section, $page, $sub_page)
    {
        $p = $section->pages()->whereSlug($page)->firstOrFail();
        $parents = $p->baseTranslate()->orderBy('order', 'desc')->orderBy('date', 'desc')->with(['files' => function($q){ $q->whereNull('parent_id'); }])->subpages()->whereSlug($sub_page)->firstOrFail();
        $children = $p->baseTranslate()->orderBy('order', 'desc')->orderBy('date', 'desc')->with(['files' => function($q){ $q->whereNotNull('parent_id'); }])->subpages()->whereSlug($sub_page)->firstOrFail();
        $section = ( new DynamicSection )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->whereSlug($section)->firstOrFail();

        return view('partials.dynamic-page.page', compact('page' , 'parents' , 'children'));
    }

    public function page($page)
    {
        $page = ( new DynamicPage )->baseTranslate()->orderBy('order', 'desc')->orderBy('id', 'desc')->whereSlug($page)->firstOrFail();
        $parents = $page->baseTranslate()->orderBy('order', 'desc')->orderBy('date', 'desc')->with(['files' => function($q){ $q->whereNull('parent_id'); }])->firstOrFail();
        $children = $page->baseTranslate()->orderBy('order', 'desc')->orderBy('date', 'desc')->with(['files' => function($q){ $q->whereNotNull('parent_id'); }])->firstOrFail();

        return view('partials.dynamic-page.page', compact('page', 'parents' , 'children'));
    }
}
