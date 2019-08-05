<div class="menu">
    <div class="menu-container">
        {{--<div class="language menu__language text-right">--}}
            {{--<ul>--}}
                {{--@foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)--}}
                    {{--<li>--}}
                        {{--<a rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">--}}
                            {{--{{ $properties['native'] }}--}}
                        {{--</a>--}}
                    {{--</li>--}}
                {{--@endforeach--}}
            {{--</ul>--}}
        {{--</div>--}}
        {{--<form class="menu--form" action="">--}}
            {{--<div class="input-group mb-3">--}}
                {{--<input type="text" class="form-control" placeholder="ՈՐՈՆԵԼ" aria-label="Recipient's username"--}}
                       {{--aria-describedby="search">--}}
                {{--<div class="input-group-append">--}}
                    {{--<span class="input-group-text" id="search"><img src="/img/search-logo.png" alt=""></span>--}}
                {{--</div>--}}
            {{--</div>--}}
        {{--</form>--}}
        <div class="burger__menu burger__menu--second">
            <div class="burger__menu--lines burger__menu--line-1"></div>
            <div class="burger__menu--lines burger__menu--line-2"></div>
            <div class="burger__menu--lines burger__menu--line-3"></div>
        </div>
        <ul class="menu--content">
            <li>
                <a href="javascript:;" class="first-lvl">{!! __tr('side_ministry') !!}</a>
                <ul class="hided--content">
                    <li><a href="{{ route('pages' , 'history') }}">{!! __tr('side_history') !!}</a></li>
                    <li><a href="{{ route('pages' , 'mission') }}">{!! __tr('side_mission') !!}</a></li>
                    <li><a href="{{ route('pages' , 'charter') }}">{!! __tr('side_legislation') !!}</a></li>
                    <li>
                        <a href="javascript:;" class="second-lvl">{!! __tr('side_structure') !!}</a>
                        <ul class="second--hidden--content">
                            <li><a href="{{ route('pages' , 'ministry-staff') }}">{!! __tr('side_ministry_staff') !!}</a></li>
                            <li><a href="{{ route('pages' , 'minister-staff') }}">{!! __tr('side_minister_staff') !!}</a></li>
                            <li><a href="{{ route('pages' , 'ministry-structure') }}">{!! __tr('side_organizational_chart') !!}</a></li>
                            <li><a href="{{ route('pages' , 'license-organization') }}">{!! __tr('side_license_agency') !!}</a></li>
                            <li><a href="https://www.healthpiu.am/" target="_blank">{!! __tr('side_health_implementation') !!}</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" class="second-lvl">{!! __tr('side_staff_provision') !!}</a>
                        <ul class="second--hidden--content">
                            <li><a href="{{ route('pages' , 'staffing-staff-list') }}">{!! __tr('side_staff_list') !!}</a></li>
                            <li><a href="{{ route('pages' , 'staffing-vacancy') }}">{!! __tr('side_vacancies') !!}</a></li>
                            <li><a href="{{ route('pages' , 'staffing-tender-results') }}">{!! __tr('side_announcement_results') !!}</a></li>
                            <li><a href="{{ route('pages' , 'staffing-job-acceptance') }}">{!! __tr('side_job_procedure') !!}</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" class="second-lvl">{!! __tr('side_institutions_under_moh') !!}</a>
                        <ul class="second--hidden--content">
                            <li><a href="{{ route('pages' , 'sub-structures-health-institute') }}">{!! __tr('side_health_national_institute') !!}</a></li>
                            <li><a href="{{ route('pages' , 'sub-structures-drug-medical-expertise') }}">{!! __tr('side_drug_medical_center') !!}</a></li>
                            <li><a href="{{ route('pages' , 'sub-structures-medical-library') }}">{!! __tr('side_ars_medical_library') !!}</a></li>
                            <li><a href="{{ route('pages' , 'sub-structures-stationery-orgs') }}">{!! __tr('side_hcf_assistance') !!}</a></li>
                            <li><a href="{{ route('pages' , 'sub-structures-other-orgs') }}">{!! __tr('side_other_organisations') !!}</a></li>
                        </ul>
                    </li>
                    <li><a href="{{ route('pages' , 'budget') }}">{!! __tr('side_budget') !!}</a></li>
                    <li><a href="{{ route('pages' , 'moh-consultants') }}">{!! __tr('side_chief_specialists') !!}</a></li>
                    <li><a href="{{ route('pages' , 'public-council') }}">{!! __tr('side_public_council') !!}</a></li>
                </ul>
            </li>
            <li class="mobile--visible">
                <a class="first-lvl" href="javascript:;">{!! __tr('header_minister') !!}</a>
            </li>
            <li>
                <a href="javascript:;" class="first-lvl">{!! __tr('side_informative') !!}</a>
                <ul class="hided--content">
                    <li><a href="{{ route('pages' , 'all-news') }}">{!! __tr('side_news') !!}</a></li>
                    <li><a href="{{ route('pages' , 'announcement') }}">{!! __tr('side_announcements') !!}</a></li>
                    <li><a href="{{ route('pages' , 'videos') }}">{!! __tr('side_videos') !!}</a></li>
                    <li><a href="{{ route('pages' , 'speeches-interviews') }}">{!! __tr('side_speeches_interviews') !!}</a></li>
                    <li><a href="{{ route('pages' , 'reports') }}">{!! __tr('side_reports') !!}</a></li>
                    <li><a href="{{ route('pages' , 'press-release') }}">{!! __tr('side_press_release') !!}</a></li>
                    <li><a href="{{ route('pages' , 'researches') }}">{!! __tr('side_research') !!}</a></li>
                    <li><a href="{{ route('pages' , 'statistics') }}">{!! __tr('side_statistics') !!}</a></li>
                    <li><a href="{{ route('pages' , 'informative') }}">{!! __tr('side_informative') !!}</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" class="first-lvl">{!! __tr('side_projects') !!}</a>
                <ul class="hided--content">
                    <li><a href="{{ route('pages' , 'politics') }}">{!! __tr('side_policy') !!}</a></li>
                    <li><a href="{{ route('pages' , 'superior') }}">{!! __tr('side_priority') !!}</a></li>
                    <li><a href="{{ route('pages' , 'national') }}">{!! __tr('side_national') !!}</a></li>
                    <li><a href="{{ route('pages' , 'international') }}">{!! __tr('side_international') !!}</a></li>
                    <li><a href="{{ route('pages' , 'screening') }}">{!! __tr('side_screening') !!}</a></li>
                    <li><a href="{{ route('pages' , 'anti-corruption-events') }}">{!! __tr('side_anti_corruption') !!}</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:;" class="first-lvl">{!! __tr('side_services') !!}</a>
                <ul class="hided--content">
                    <li><a href="{{ route('pages' , 'licens-documents-application') }}">{!! __tr('side_licensing_documents') !!}</a></li>
                    <li><a href="{{ route('pages' , 'advertising-permission') }}">{!! __tr('side_advertisement_permission') !!}</a></li>
                    <li><a href="{{ route('pages' , 'state-order') }}">{!! __tr('side_social_package') !!}</a></li>
                    <li><a href="{{ route('pages' , 'admission') }}">{!! __tr('side_admission_results') !!}</a></li>
                </ul>
            </li>
            <li>
                <a href="{{ route('pages' , 'faq') }}" class="first-lvl">{!! __tr('side_faq') !!}</a>
            </li>
            <li>
                <a href="{{ route('pages' , 'links') }}" class="first-lvl">{!! __tr('side_links') !!}</a>
                <!--<ul class="hided&#45;&#45;content">-->
                <!--<li><a href="javascript:;">Գործընկերներ</a></li>-->
                <!--<li><a href="javascript:;">Հասարակական կազմակերպություններ</a></li>-->
                <!--<li><a href="javascript:;">Մանկական բարեգործական կազմակերպություններ</a></li>-->
                <!--<li><a href="javascript:;">Հղումներ</a></li>-->
                <!--</ul>-->
            </li>
            <li>
                <a href="{{ route('pages' , 'your-rights') }}" class="first-lvl">{!! __tr('side_your_rights') !!}</a>
            </li>

            @each('partials.sidebar-sections', $pages, 'page')
            @each('partials.sidebar-sections', $sections, 'section')

            <li class="mobile--visible">
                <a href="{{ route('pages' , 'legal-acts') }}" class="first-lvl">{!! __tr('header_legal-acts') !!}</a>
            </li>
            <li class="mobile--visible">
                <a href="{{ route('pages' , 'contact-us') }}" class="first-lvl">{!! __tr('header_contact-us') !!}</a>
            </li>
        </ul>
        <div class="menu__social">
            <ul class="menu__social--icons d-flex align-items-center justify-content-center">
                @foreach($socials as $social)
                    @if(!is_null($social->slug))
                        <li class="rounded-circle">
                            <a href="{{$social->url}}" target="_blank">
                                <i class="{{$social->slug}}--icon"></i>
                            </a>
                        </li>
                    @endif
                @endforeach
            </ul>
        </div>
    </div>
</div>