@extends('layouts.app')
@section('content')
    <main>
        <section class="main__cover">
            @foreach($slidersInfo as $sliderInfo)
                <div class="main__cover--item" style="background-image: url('{{Storage::url($sliderInfo->image)}}')">
                    <div class="main__cover--item-container">
                        <div class="main__cover--item-container-cont">
                            <h2>{!! $sliderInfo->getTranslatedAttribute('title') !!}</h2>
                            <p class="text-justify editor-content">{!! getDescription($sliderInfo->getTranslatedAttribute('text')) !!}</p>
                            @if($sliderInfo->url)
                                <div class="main-cover-button">
                                    <a href="{{$sliderInfo->url}}"
                                       class="animated__button animated__button--blue-1">Ավելին</a>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            @endforeach
        </section>
        <section class="news__background">
            <div class="news__content mx-auto">
                <h1 class="news__content--header">
                    ՆՈՐՈՒԹՅՈՒՆՆԵՐ
                </h1>
                <div class="news__content--slider">
                    @foreach($news as $singleNews)
                        <?php
                        $images = json_decode($singleNews->images);
                        $featuredImage = $images[0];
                        ?>
                        <div class="news__content--items">
                            <div class="mobile-card">
                                <div class="news__image clearfix">
                                    <div class="news__image--background"
                                         style="background-image: url({{Storage::url($featuredImage)}})"></div>
                                </div>
                                <div class="news__info">
                                    <span>{{ $singleNews->date->formatLocalized('%B %d, %Y') }}</span>
                                    <h1>{{$singleNews->getTranslatedAttribute('title')}}</h1>
                                    <div class="news-description text-justify editor-content">{!! getDescription($singleNews->getTranslatedAttribute('description')) !!}</div>
                                    <a href="{{route('show.news.individual' , $singleNews->id)}}" class="animated__button animated__button--blue">Ավելին</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="news-cont-prev prev-arrow">
                </div>
                <div class="news-cont-next next-arrow">
                </div>
            </div>
        </section>
        <section class="announcements">
            <div class="announcements--cont mx-auto">
                <div class="announcements--cont--header mb-4">
                    <h1>հայտարարություններ</h1>
                </div>
                <div class="announcements--cont--slider">
                    @foreach($announcements as $announcement)
                        <div class="announcements--cont--slider--items">
                            <h1>{{$announcement->getTranslatedAttribute('title')}}</h1>
                            <div class="announcement-description text-justify editor-content">
                                {!! getDescription($announcement->getTranslatedAttribute('description')) !!}
                            </div>
                            <a href="{{route('show.announcement.individual' , $announcement->id)}}" class="animated__button animated__button--yellow-small">Ավելին</a>
                        </div>
                    @endforeach
                </div>
                <div class="announcements-prev prev-arrow">
                </div>
                <div class="announcements-next next-arrow">
                </div>
            </div>
        </section>
        <section class="videos__background">
            <div class="videos__background--content mx-auto">
                <h1>ՏԵՍԱՆՅՈւԹԵՐ</h1>
                <div class="videos__background--content--slider">
                    @foreach($videos as $video)
                        <div class="video__items">
                            <div class="mobile-video-card">
                                <div class="video__items--video">
                                    <iframe class="video" width="90%" height="320px"
                                            src="https://www.youtube.com/embed/{{getVideoKey($video->video_url)}}">
                                    </iframe>
                                </div>
                                <div class="video__items--text">
                                    <span>{{ $video->date->formatLocalized('%B %d, %Y') }}</span>
                                    <h1>{{$video->getTranslatedAttribute('title')}}</h1>
                                    <a href="{{route('show.video.individual' , $video->id)}}" class="margin-auto animated__button animated__button--blue">ավելին</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="videos__background-prev prev-arrow">
                </div>
                <div class="videos__background-next next-arrow">
                </div>
            </div>
        </section>
    </main>
@endsection
