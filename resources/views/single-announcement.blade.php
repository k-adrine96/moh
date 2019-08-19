@section('meta')
    <meta property="og:url"           content="{{url()->current()}}" />
    <meta property="og:title"         content="{{$announcementIndividual->getTranslatedAttribute('title')}}" />
    <meta property="og:description"   content="{{ strip_tags(getDescription($announcementIndividual->getTranslatedAttribute('description'))) }}" />
    <meta property="og:image"         content="{{$_SERVER['REQUEST_SCHEME']."://".$_SERVER['SERVER_NAME']."/".Storage::url($coverPhoto->page_cover_photo)}}" />
@endsection
@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{!! __tr('announcement') !!}</h1>
            </div>
        </section>
        <section class="single__announcement">
            <div class="single__announcement--header">
                <h1>{{$announcementIndividual->getTranslatedAttribute('title')}}</h1>
            </div>
            <div class="single__announcement--date">
                <p>{{ $announcementIndividual->date->formatLocalized('%B %d, %Y') }}</p>
            </div>
            <div class="single__announcement--body">
                <p class="text-justify editor-content">{!! getDescription($announcementIndividual->getTranslatedAttribute('description')) !!}</p>
            </div>
        </section>
        <section class="main__cont__size print-container">
            <a class="print-page" href="javascript:;"></a>
        </section>
        <div class="fb_share_btn">
            <div class="fb-share-button" data-href="{{url()->current()}}" data-layout="button_count"></div>
        </div>
    </main>
@endsection