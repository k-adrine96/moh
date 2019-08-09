@include('partials.fb-share-meta', [
    'description' => getDescription($pagesTexts->getTranslatedAttribute('page_text1')) ,
    'image'       => $_SERVER['REQUEST_SCHEME']."://".$_SERVER['SERVER_NAME']."/".Storage::url($coverPhoto->page_cover_photo)
])
@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{!! __tr('header_contact-us') !!}</h1>
            </div>
        </section>
        <section class="contact__us">
            @include('partials.contact-mail-form')
            <div class="contact__us--cont">
                <div class="contact__us--cont--text1 text-justify editor-content">
                    {!! getDescription($pagesTexts->getTranslatedAttribute('page_text1')) !!}
                    {!! !is_null( $pagesTexts->page_text2 ) ? getDescription($pagesTexts->getTranslatedAttribute('page_text2')) : '' !!}
                    {!! !is_null( $pagesTexts->page_text3 ) ? getDescription($pagesTexts->getTranslatedAttribute('page_text3')) : '' !!}
                </div>
                <div class="fb_share_btn">
                    <div class="fb-share-button" data-href="{{url()->current()}}" data-layout="button_count"></div>
                </div>
            </div>
        </section>
    </main>
@endsection

@push('js')
    <script src="js/google-map.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7nSpucMaZeeBRk9JbmLZkVWQx4L8fLgs&callback=initMap" type="text/javascript"></script>
@endpush