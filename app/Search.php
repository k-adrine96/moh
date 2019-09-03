<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
use Schema;
use TCG\Voyager\Traits\Translatable;

/**
 * @property array $result
 */
class Search extends BaseModel
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
        'website_name',
        'description',
        'head_position',
        'head_name',
        'address',
        'phone_number',
        'email',
        'question',
        'answer',
        'text',
        'position',
        'working_place',
    ];

    public function __construct(string $keyword)
    {
        parent::__construct([]);
        $this->keyword = trim($keyword);
        strlen($keyword) >= 3 ? $this->result = collect() : $this->result = 'No Result';
    }

    public function getResult()
    {
        foreach ($this->searchModels as $model) {
            $model = new $model;
            $columns = Schema::getColumnListing($model->getTable());

            foreach ($columns as $item) {
                if(in_array($item , $this->displayNames)){
                    if (property_exists($model, 'translatable')) {
                        $res = $model->whereTranslation($item, 'like', "%$this->keyword%", ['en', 'ru'], true)->distinct()->get();

                        foreach ($res as $_item) {
                            $_item->file_name ? $searchText = $_item->file_name : $searchText = $_item->$item;
                            if($this->result != 'No Result'){
                                $this->result[$_item->getTable() . ':' . $_item->id] = [
                                    'search_text' => $searchText,
                                    'url' => '/'.$_item->page_url
                                ];
                            }
                        }
                    }
                }
            }
        }

        return $this->result;
    }
}
