<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use App, App\Faq, App\News, App\Videos, App\Budget, App\Report;
use App\PcStaff, App\PcAppeal, App\PcResult, App\Politics, App\Social;
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
        $socials      = Social::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        if($page === 'minister-staff')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'minister-staff')->first();
            $content    = MinisterStaff::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'ministry-staff')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'ministry-staff')->first();
            $content    = MinistryStaff::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'mission')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'mission')->first();
            $pagesTexts = PagesTexts::where('page_slug', 'mission')->first();

        }else if($page === 'contact-us')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'contact-us')->first();
            $pagesTexts = PagesTexts::where('page_slug', 'contact-us')->first();

        }else if($page === 'minister-page')
        {
            $coverPhoto      = CoverPhotos::where('page_slug', 'minister-page')->first();
            $content         = MinisterPage::first();
            $pagesTexts      = PagesTexts::where('page_slug', 'minister-page')->first();
            $minInfoItems    = MinisterInfo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $minInfoCats     = MinisterInfoCategory::orderBy('order', 'desc')->orderBy('id', 'asc')->get();

        }else if($page === 'charter')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'charter')->first();
            $pagesTexts = PagesTexts::where('page_slug', 'charter')->first();

        }else if($page === 'all-news')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'all-news')->first();
            $content    = News::orderBy('order', 'desc')->orderBy('date', 'desc')->get();

        }else if($page === 'videos')
        {
            $content = Videos::orderBy('order', 'desc')->orderBy('date', 'desc')->get();

        }else if($page === 'announcement')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'announcement')->first();
            $content    = Announcements::orderBy('order', 'desc')->orderBy('date', 'desc')->get();

        }else if($page === 'budget')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'budget')->first();
            $filesCats  = BudgetCategory::orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();
            $filesInfo  = Budget::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'faq')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'faq')->first();
            $faqs = Faq::orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();
            $faqCategories  = FaqCategory::orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();


        }else if($page === 'history')
        {
            $coverPhoto      = CoverPhotos::where('page_slug', 'history')->first();
            $minHistoryItems = MinHistoryItem::orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();
            $minHistoryCats  = MinHistoryCategory::orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();

        }else if($page === 'links')
        {
            $coverPhoto     = CoverPhotos::where('page_slug', 'links')->first();
            $LinksNgos      = LinksNgo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $LinksCcos      = LinksCco::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $LinksLinks     = LinksLink::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $LinksCoWorkers = LinksCoWorker::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'ministry-structure')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'ministry-structure')->first();

        }else if($page === 'moh-consultants')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'moh-consultants')->first();
            $content    = MohConsultant::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'sub-structures-stationery-orgs')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-stationery-orgs')->first();
            $content    = SsStationeryOrg::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'sub-structures-other-orgs')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-other-orgs')->first();
            $content    = SsOtherOrg::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'public-council')
        {
            $coverPhoto  = CoverPhotos::where('page_slug', 'public-council')->first();
            $PcStaffs    = PcStaff::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();
            $PcAppeals   = PcAppeal::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();
            $PcResults   = PcResult::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();
            $PcSessions  = PcSession::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'speeches-interviews')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'speeches-interviews')->first();
            $filesInfo  = SpeechAndInterview::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'reports')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'reports')->first();
            $filesInfo  = Report::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'press-release')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'press-release')->first();
            $filesInfo  = PressRelease::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'researches')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'researches')->first();
            $filesInfo  = Research::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'statistics')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'statistics')->first();
            $filesInfo  = Statistic::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

        }else if($page === 'informative')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'informative')->first();
            $filesInfo  = Informative::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();

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
                $legalActs = $legalActs::where('date', $request->date);
            }

            $actsTypes = LegalActsType::orderBy('order' , 'desc')->get();
            $parents   = $legalActs::orderBy('order' , 'desc')->orderBy('date', 'desc')->whereNull('parent_id')->get();
            $filesInfo = $legalActs::orderBy('order' , 'desc')->orderBy('date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'politics')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'politics')->first();
            $parents    = Politics::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = Politics::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'superior')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'superior')->first();
            $parents    = Superior::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = Superior::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'national')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'national')->first();
            $parents    = National::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = National::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'international')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'international')->first();
            $parents    = International::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = International::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'screening')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'screening')->first();
            $parents    = Screening::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = Screening::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'anti-corruption-events')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'anti-corruption-events')->first();
            $parents    = AntiCorruptionEvent::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = AntiCorruptionEvent::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'licens-documents-application')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'licens-documents-application')->first();
            $parents    = LicensDocumentsApplication::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = LicensDocumentsApplication::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'advertising-permission')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'advertising-permission')->first();
            $parents    = AdvertisingPermission::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = AdvertisingPermission::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'state-order')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'state-order')->first();
            $parents    = StateOrder::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = StateOrder::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'admission')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'admission')->first();
            $parents    = Admission::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = Admission::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'staffing-staff-list')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'staffing-staff-list')->first();
            $parents    = StaffingStaffList::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = StaffingStaffList::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'staffing-vacancy')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'staffing-vacancy')->first();
            $parents    = StaffingVacancy::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = StaffingVacancy::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'staffing-tender-results')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'staffing-tender-results')->first();
            $parents    = StaffingTenderResult::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = StaffingTenderResult::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'staffing-job-acceptance')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'staffing-job-acceptance')->first();
            $parents    = StaffingJobAcceptance::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = StaffingJobAcceptance::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'your-rights')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'your-rights')->first();
            $content    = YourRightsVideo::orderBy('order', 'desc')->orderBy('date', 'desc')->orderBy('id', 'desc')->get();
            $parents    = YourRightsFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = YourRightsFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'license-organization')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'license-organization')->first();
            $pagesTexts = PagesTexts::where('page_slug', 'license-organization')->first();
            $content    = LicenseOrgInfo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = LicenseOrgFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = LicenseOrgFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'sub-structures-health-institute')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-health-institute')->first();
            $pagesTexts = PagesTexts::where('page_slug', 'sub-structures-health-institute')->first();
            $content    = SsHealthInstituteInfo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = SsHealthInstituteFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = SsHealthInstituteFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'sub-structures-drug-medical-expertise')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-drug-medical-expertise')->first();
            $pagesTexts = PagesTexts::where('page_slug', 'sub-structures-drug-medical-expertise')->first();
            $content    = SsDrugMedicalExpertInfo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = SsDrugMedicalExpertFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = SsDrugMedicalExpertFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'sub-structures-medical-library')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-medical-library')->first();
            $pagesTexts = PagesTexts::where('page_slug', 'sub-structures-medical-library')->first();
            $content    = SsMedicalLibraryInfo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = SsMedicalLibraryFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = SsMedicalLibraryFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }

        return view($page , compact('pagesTexts' , 'coverPhoto', 'content' ,
                                            'minInfoItems' , 'minInfoCats' , 'filesInfo' , 'filesCats' ,
                                            'partnersRow1' , 'partnersRow2' , 'minHistoryItems' ,
                                            'minHistoryCats' , 'legalActs' , 'actsTypes' , 'LinksCoWorkers' ,
                                            'LinksNgos' , 'LinksCcos' , 'LinksLinks' , 'parents' , 'faqs' ,
                                            'faqCategories' , 'PcStaffs' , 'PcAppeals' , 'PcResults' , 'PcSessions' , 'socials'));
    }

    public function homepage(){

     	$news          = News::latest()->take(5)->get();
     	$videos        = Videos::latest()->take(5)->get();
        $partnersRow1  = Partners::where('slider_row', 1)->get();
        $partnersRow2  = Partners::where('slider_row', 2)->get();
        $announcements = Announcements::latest()->take(5)->get();
        $socials       = Social::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
        $slidersInfo   = HomepageSlider::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        return view('home' , compact('slidersInfo' , 'news' , 'announcements' , 'videos', 'partnersRow1' , 'partnersRow2' , 'socials'));

    }

    public function showNewsIndividual($id){

        $newsIndividual = News::where('id', $id)->first();
        $partnersRow1   = Partners::where('slider_row', 1)->get();
        $partnersRow2   = Partners::where('slider_row', 2)->get();
        $coverPhoto     = CoverPhotos::where('page_slug', 'single-news')->first();
        $socials        = Social::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        return view('single-news' , compact('newsIndividual' , 'coverPhoto', 'partnersRow1' , 'partnersRow2' , 'socials'));
    }

    public function showAnnouncementIndividual($id){

        $partnersRow1           = Partners::where('slider_row', 1)->get();
        $partnersRow2           = Partners::where('slider_row', 2)->get();
        $announcementIndividual = Announcements::where('id', $id)->first();
        $socials                = Social::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
        $coverPhoto             = CoverPhotos::where('page_slug', 'single-announcement')->first();

        return view('single-announcement' , compact('announcementIndividual' , 'coverPhoto', 'partnersRow1' , 'partnersRow2' , 'socials'));
    }

    public function showVideoIndividual($id){

        $videoIndividual = Videos::where('id', $id)->first();
        $partnersRow1    = Partners::where('slider_row', 1)->get();
        $partnersRow2    = Partners::where('slider_row', 2)->get();
        $coverPhoto      = CoverPhotos::where('page_slug', 'single-video')->first();
        $socials         = Social::orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        return view('single-video' , compact('videoIndividual' , 'coverPhoto' , 'partnersRow1' , 'partnersRow2' , 'socials'));
    }

    public function fileUpload(Request $request)
    {
        return $request->all();
    }

    public function pageSection($section, $page)
    {
        $section  = DynamicSection::whereSlug($section)->firstOrFail();
        $page     = DynamicPage::whereSlug($page)->firstOrFail();
        $parents  = $page->files()->orderBy('order', 'desc')->orderBy('date', 'desc')->whereNull('parent_id')->get();
        $children = $page->files()->orderBy('order', 'desc')->orderBy('date', 'desc')->whereNotNull('parent_id')->get();

        return view('partials.dynamic-page.page', compact('page', 'parents' , 'children'));
    }

    public function subPage($section, $page, $sub_page)
    {
        $section  = DynamicSection::whereSlug($section)->firstOrFail();
        $page     = $section->pages()->whereSlug($page)->firstOrFail()->subpages()->whereSlug($sub_page)->firstOrFail();
        $parents  = $page->files()->orderBy('order', 'desc')->orderBy('id', 'desc')->whereNull('parent_id')->get();
        $children = $page->files()->orderBy('order', 'desc')->orderBy('id', 'desc')->whereNotNull('parent_id')->get();

        return view('partials.dynamic-page.page', compact('page' , 'parents' , 'children'));
    }

    public function page($page)
    {
        $page     = DynamicPage::whereSlug($page)->firstOrFail();
        $parents  = $page->files()->orderBy('order', 'desc')->orderBy('date', 'desc')->whereNull('parent_id')->get();
        $children = $page->files()->orderBy('order', 'desc')->orderBy('date', 'desc')->whereNotNull('parent_id')->get();

        return view('partials.dynamic-page.page', compact('page', 'parents' , 'children'));
    }
}
