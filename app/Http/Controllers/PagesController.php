<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Faq;
use App\News;
use App\Videos;
use App\Budget;
use App\Report;
use App\Politics;
use App\Superior;
use App\National;
use App\LegalAct;
use App\Partners;
use App\Research;
use App\LinksNgo;
use App\LinksCco;
use App\PcStaff;
use App\PcAppeal;
use App\PcResult;
use App\PcSession;
use App\Screening;
use App\LinksLink;
use App\Statistic;
use App\Admission;
use App\StateOrder;
use App\PagesTexts;
use App\SsOtherOrg;
use App\Informative;
use App\CoverPhotos;
use App\FaqCategory;
use App\PressRelease;
use App\MinisterPage;
use App\MinisterInfo;
use App\International;
use App\LinksCoWorker;
use App\LegalActsType;
use App\Announcements;
use App\MinisterStaff;
use App\MinistryStaff;
use App\MohConsultant;
use App\LicenseOrgFile;
use App\LicenseOrgInfo;
use App\BudgetCategory;
use App\HomepageSlider;
use App\MinHistoryItem;
use App\YourRightsFile;
use App\SsStationeryOrg;
use App\YourRightsVideo;
use App\StaffingVacancy;
use App\StaffingStaffList;
use App\MinHistoryCategory;
use App\SpeechAndInterview;
use App\AntiCorruptionEvent;
use App\StaffingTenderResult;
use App\SsMedicalLibraryFile;
use App\SsMedicalLibraryInfo;
use App\MinisterInfoCategory;
use App\SsHealthInstituteFile;
use App\SsHealthInstituteInfo;
use App\StaffingJobAcceptance;
use App\AdvertisingPermission;
use App\SsDrugMedicalExpertFile;
use App\SsDrugMedicalExpertInfo;
use App\LicensDocumentsApplication;

class PagesController extends Controller
{
    public function index(Request $request, $page)
    {
        $partnersRow1 = Partners::where('slider_row', 1)->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
        $partnersRow2 = Partners::where('slider_row', 2)->orderBy('order', 'desc')->orderBy('id', 'desc')->get();

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
            $educationInfos = MinisterInfo::where('category_id', 2)->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $workInfos      = MinisterInfo::where('category_id', 3)->orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $otherInfos     = MinisterInfo::where('category_id', 4)->orderBy('order', 'desc')->orderBy('id', 'desc')->get();

        }else if($page === 'charter')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'charter')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'charter')->first();

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
            $filesInfo  = Budget::orderBy('order', 'desc')->orderBy('file_date', 'desc')->get();
            $filesCats  = BudgetCategory::orderBy('order' , 'desc')->orderBy('id' , 'desc')->get();

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
            $content    = SsStationeryOrg::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-stationery-orgs')->first();

        }else if($page === 'sub-structures-other-orgs')
        {
            $content    = SsOtherOrg::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-other-orgs')->first();

        }else if($page === 'public-council')
        {
            $coverPhoto = CoverPhotos::where('page_slug', 'public-council')->first();
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
                $legalActs = $legalActs->where('date', $request->date);
            }

            $actsTypes = LegalActsType::orderBy('order' , 'desc')->get();
            $parents   = $legalActs->orderBy('order' , 'desc')->orderBy('date', 'desc')->whereNull('parent_id')->get();
            $filesInfo = $legalActs->orderBy('order' , 'desc')->orderBy('date', 'desc')->whereNotNull('parent_id')->get();

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
            $pagesTexts = PagesTexts::where('page_slug', 'license-organization')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'license-organization')->first();
            $content    = LicenseOrgInfo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = LicenseOrgFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = LicenseOrgFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'sub-structures-health-institute')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'sub-structures-health-institute')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-health-institute')->first();
            $content    = SsHealthInstituteInfo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = SsHealthInstituteFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = SsHealthInstituteFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'sub-structures-drug-medical-expertise')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'sub-structures-drug-medical-expertise')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-drug-medical-expertise')->first();
            $content    = SsDrugMedicalExpertInfo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = SsDrugMedicalExpertFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = SsDrugMedicalExpertFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }else if($page === 'sub-structures-medical-library')
        {
            $pagesTexts = PagesTexts::where('page_slug', 'sub-structures-medical-library')->first();
            $coverPhoto = CoverPhotos::where('page_slug', 'sub-structures-medical-library')->first();
            $content    = SsMedicalLibraryInfo::orderBy('order', 'desc')->orderBy('id', 'desc')->get();
            $parents    = SsMedicalLibraryFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNull('parent_id')->get();
            $filesInfo  = SsMedicalLibraryFile::orderBy('order', 'desc')->orderBy('file_date', 'desc')->whereNotNull('parent_id')->get();

        }

        return view($page , compact('pagesTexts' , 'coverPhoto', 'content' ,
                                            'educationInfos' , 'workInfos' , 'otherInfos' ,
                                            'filesInfo' , 'filesCats' , 'partnersRow1' , 'partnersRow2' ,
                                            'minHistoryItems' , 'minHistoryCats' , 'legalActs' ,
                                            'actsTypes' , 'LinksCoWorkers' , 'LinksNgos' , 'LinksCcos' ,
                                            'LinksLinks' , 'parents' , 'faqs' , 'faqCategories' ,
                                            'PcStaffs' , 'PcAppeals' , 'PcResults' , 'PcSessions'));
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
}
