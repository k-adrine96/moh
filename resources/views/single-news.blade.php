@section('meta')
    <meta property="og:url"           content="{{url()->current()}}" />
    <meta property="og:title"         content="{{$newsIndividual->getTranslatedAttribute('title')}}" />
    <meta property="og:description"   content="{{ strip_tags(getDescription($newsIndividual->getTranslatedAttribute('description'))) }}" />
    <meta property="og:image"         content="{{$_SERVER['REQUEST_SCHEME']."://".$_SERVER['SERVER_NAME']."/".Storage::url(json_decode($newsIndividual->images[0]))}}" />
@endsection
@extends('layouts.app')
@section('content')
    <main>
        <section class="secondary__cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{!! __tr('side_news') !!}</h1>
            </div>
        </section>
        <section class="single__news clearfix">
            @php
                $images = json_decode($newsIndividual->images);
            @endphp
            <div class="single__news--slider">
                @foreach($images as $img)
                    <a class="single__news--image"  data-fancybox="gallery" href="{{Storage::url($img)}}"><img src="{{Storage::url($img)}}"></a>
                @endforeach
            </div>
            <div class="single__news--info">
                <div class="single__news--info--header">
                    <h1>{{$newsIndividual->getTranslatedAttribute('title')}}</h1>
                </div>
                <div class="single__news--info--date">
                    <h2>{{ $newsIndividual->date->formatLocalized('%B %d, %Y') }}</h2>
                </div>
                <div class="single__news--info--text text-justify editor-content">
                    {!! getDescription($newsIndividual->getTranslatedAttribute('description')) !!}
                </div>
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
@push('css')
    <link rel="stylesheet" href="/css/jquery.fancybox.min.css">
@endpush
@push('js')
    <script src="/js/jquery.fancybox.min.js"></script>
@endpush