<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Schema;
use TCG\Voyager\Traits\Translatable;

/**
 * @property array $result
 */
class Search extends Model
{
    protected $keyword;
    protected $result;

    protected $searchModels = [
        Admission::class,
        LicensDocumentsApplication::class,
        MinHistoryItem::class,
        News::class,
        PressRelease::class,
        SsDrugMedicalExpertFile::class,
        StaffingJobAcceptance::class,
        Videos::class,
        AdvertisingPermission::class,
        LicenseOrgFile::class,
        SsDrugMedicalExpertInfo::class,
        StaffingStaffList::class,
        Announcements::class,
        LicenseOrgInfo::class,
        MinisterInfo::class,
        Report::class,
        SsHealthInstituteFile::class,
        StaffingTenderResult::class,
        YourRightsFile::class,
        AntiCorruptionEvent::class,
        PcAppeal::class,
        Research::class,
        SsHealthInstituteInfo::class,
        StaffingVacancy::class,
        YourRightsVideo::class,
        Informative::class,
        Faq::class,
        LinksCco::class,
        MinisterStaff::class,
        PcResult::class,
        Screening::class,
        SsMedicalLibraryFile::class,
        StateOrder::class,
        International::class,
        LinksLink::class,
        MinistryStaff::class,
        PcSession::class,
        SsMedicalLibraryInfo::class,
        Statistic::class,
        Budget::class,
        LegalAct::class,
        LinksNgo::class,
        MohConsultant::class,
        PcStaff::class,
        SsOtherOrg::class,
        Superior::class,
        National::class,
        Politics::class,
        SpeechAndInterview::class,
        SsStationeryOrg::class,
    ];
    protected $displayNames = [
        'name',
        'title',
        'file_name',
        'page_name',
        'ngo_name',
        'organisation_name',
        'website_name'
    ];

    public function __construct(string $keyword)
    {
        parent::__construct([]);
        $this->keyword = trim($keyword);
        $this->result = collect();
    }

    public function getResult()
    {
        foreach ($this->searchModels as $model) {
            $model = new $model;
            $columns = Schema::getColumnListing($model->getTable());


            foreach ($columns as $item) {
                if (property_exists($model, 'translatable')) {
                    $res = $model->whereTranslation($item, 'like', "%$this->keyword%", ['en', 'ru'], true)->distinct()->get();
                    foreach ($res as $_item) {
//                        dd($_item);
                        $this->result[$_item->getTable() . ':' . $_item->id] = [
                            'search_text' => $_item->file_name,
                            'url' => '/'.$_item->page_url,
//                            'profession' => $_item->profession,
//                            'image' => $_item->image
                        ];
                    }
                }
            }
        }
        return $this->result;
    }
}
