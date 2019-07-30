@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{{ __tr('header_contact-us') }}</h1>
            </div>
        </section>
        <section class="contact__us">
            <div class="contact__us--info">
                <div class="contact__us--info--form">
                    <form action="" class="contact__us--form">
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><img src="/img/username-icon.png" alt=""></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Անուն Ազգանուն" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><img src="/img/email-1-icon.png" alt=""></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Էլ․ հասցե" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><img src="img/theme-icon.png" alt=""></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Թեմա" aria-label="Username" aria-describedby="">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" placeholder="Հաղորդագրություն"></textarea>
                        </div>
                        <div class="contact__us--btns d-flex justify-content-center">
                            <a href="javascript:;" class="animated__button animated__button--yellow">{{ __tr('delete') }}</a>
                            <a href="javascript:;" class="animated__button animated__button--blue-1">{{ __tr('send') }}</a>
                        </div>
                    </form>
                </div>
                <div class="contact__us--info--map">
                    <div id="map"></div>
                </div>
            </div>
            <div class="contact__us--cont">
                <div class="contact__us--cont--text1 text-justify editor-content">
                    {!! getDescription($pagesTexts->getTranslatedAttribute('page_text1')) !!}
                </div>
                <div class="contact__us--cont--text1 text-justify editor-content">
                    {!! !is_null( $pagesTexts->page_text2 ) ? getDescription($pagesTexts->getTranslatedAttribute('page_text2')) : '' !!}
                </div>
                <div class="contact__us--cont--text1 text-justify editor-content">
                    {!! !is_null( $pagesTexts->page_text3 ) ? getDescription($pagesTexts->getTranslatedAttribute('page_text3')) : '' !!}
                </div>
            </div>
        </section>
    </main>
@endsection

@push('js')
    <script src="js/google-map.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA7nSpucMaZeeBRk9JbmLZkVWQx4L8fLgs&callback=initMap" type="text/javascript"></script>
@endpush