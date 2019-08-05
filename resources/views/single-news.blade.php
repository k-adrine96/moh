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
                <div class="single__news--info--text">
                    {!! getDescription($newsIndividual->getTranslatedAttribute('description')) !!}
                </div>
            </div>
            <a href="https://www.facebook.com/sharer/sharer.php?u=http://moh.mgplab.com&display=popup"> share this </a>
        </section>
        <section class="main__cont__size print-container">
            <a class="print-page" href="javascript:;"></a>
        </section>
    </main>
@endsection
@push('css')
    <link rel="stylesheet" href="/css/jquery.fancybox.min.css">
@endpush
@push('js')
    <script src="/js/jquery.fancybox.min.js"></script>
@endpush