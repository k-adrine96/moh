@include('partials.fb-share-meta', ['description' => getDescription($pagesTexts->getTranslatedAttribute('page_text2')) ])
@extends('layouts.app')
@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{!! __tr('side_legislation') !!}</h1>
            </div>
        </section>
        <section class="charter-container">
            <div class="charter-content">
                <ul class="pdf__container">
                    <li class="text-center">
                        <div class="pdf__info text-justify editor-content">
                            {!! getDescription($pagesTexts->getTranslatedAttribute('page_text1')) !!}
                        </div>
                    </li>
                    <li>
                        <div class="pdf__info text-justify editor-content">
                            {!! !is_null( $pagesTexts->page_text2 ) ? getDescription($pagesTexts->getTranslatedAttribute('page_text2')) : '' !!}
                        </div>
                    </li>
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--row d-flex align-items-start">
                                <div class="pdf__text">
                                    <ul>
                                        <li class="d-flex align-items-center text-justify editor-content">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            {!! !is_null( $pagesTexts->page_text3 ) ? getDescription($pagesTexts->getTranslatedAttribute('page_text3')) : '' !!}
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="fb_share_btn">
                    <div class="fb-share-button" data-href="{{url()->current()}}" data-layout="button_count"></div>
                </div>
            </div>
        </section>
    </main>
@endsection