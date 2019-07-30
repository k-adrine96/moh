@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover aks__minister--cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{!! __tr('side_organizational_chart') !!}</h1>
            </div>
        </section>
        <section class="ministry__structure">
            <div class="container-fluid p-0">
                <div class="row">
                    <div class="col-md-12 col-lg-5">
                        <ul class="ministry__structure--list">
                            <li class="yellow--background">
                                <h1>{!! __tr('header_minister') !!}</h1>
                            </li>
                            <li class="blue--background">
                                <p>{!! __tr('general_secretary') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('deputy_minister') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('deputy_minister') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('deputy_minister') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('deputy_minister') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('minister_adviser') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('minister_adviser') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('minister_adviser') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('minister_speaker') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('minister_assistant') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('minister_assistant') !!}</p>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-12 col-lg-7">
                        <ul class="ministry__structure--list ministry__structure--list--right">
                            <li class="gray--background">
                                <p>{!! __tr('general_secretary_deputy') !!}</p>
                            </li>
                            <li class="blue--background">
                                <p>{!! __tr('medical_care_policy_assistant') !!}</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px;">
                                <p class="color-blue">{!! __tr('medical_care_policy_assistant') !!}</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px;">
                                <p class="color-blue">{!! __tr('medical_care_policy_assistant') !!}</p>
                            </li>
                            <li class="blue--background">
                                <p>{!! __tr('maternal_child_department') !!}</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">{!! __tr('maternal_reproductive_department') !!}</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">{!! __tr('child_health_department') !!}</p>
                            </li>
                            <li class="blue--background">
                                <p>{!! __tr('drug_policy_department') !!}</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">{!! __tr('medicines_policy_department') !!}</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue" style="font-size: 1.3rem">{!! __tr('medical_technology_humanitarian_department') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('personal_management') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('legacy_department') !!}</p>
                            </li>
                            <li class=" white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">{!! __tr('legislation_improvement_analysis') !!}</p>
                            </li>
                            <li class="color-blue white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">{!! __tr('legal_assistance_division') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('public_health_department') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('emergency_department') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('foreign_relations_department') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('public_relations_department') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('finance_economics_department') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('accounting_department') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('internal_audit_department') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('first_section') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('secretariat') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('licensing_agency') !!}</p>
                            </li>
                            <li class="gray--background">
                                <p>{!! __tr('state_health_agency') !!}</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </main>
@endsection