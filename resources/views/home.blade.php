@extends('layouts.app')

@section('content')
    <main>
        <section class="main__cover">
            @foreach($slidersInfo as $sliderInfo)
                <div class="main__cover--item" style="background-image: url('{{Storage::url($sliderInfo->image)}}')">
                    <div class="main__cover--item-container">
                        <div class="main__cover--item-container-cont">
                            <h2>{!! $sliderInfo->title !!}</h2>
                            <p>{!! $sliderInfo->text !!}</p>
                            @if($sliderInfo->url)
                                <a href="{{$sliderInfo->url}}"
                                   class="animated__button animated__button--blue-1">Ավելին</a>
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
                                    <span><?php echo date('d F Y l', strtotime($singleNews->date)); ?></span>
                                    <h1>{{$singleNews->title}}</h1>
                                    <div class="news-description">{!! $singleNews->description !!}</div>
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
                            <h1>{{$announcement->title}}</h1>
                            <div class="announcement-description">
                                {!! $announcement->description !!}
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
                                    <?php $videoKey = explode('/', $video->video_url)[3]; ?>
                                    <iframe class="video" width="90%" height="320px"
                                            src="https://www.youtube.com/embed/{{$videoKey}}">
                                    </iframe>
                                </div>
                                <div class="video__items--text">
                                    <span><?php echo date('d F Y l', strtotime($video->date)); ?></span>
                                    <h1>{{$video->title}}</h1>
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
        <section class="partners">
            <?php //$count = ''; ?>
            @foreach($partners->chunk(4) as $chunk)
                <div class="partners--cont">
                    <?php //$count += 1; ?>
                    <div class="partners--cont--slider">
                        @foreach($chunk as $partner)
                            <a href="{{$partner->url}}" class="partners--cont--item"
                               style="background-image: url('{{Storage::url($partner->image)}}')"></a>
                        @endforeach
                    </div>
                </div>
            @endforeach
        </section>
    </main>
@endsection



<section class="partners">
    <div class="partners--cont">
        <div class="partners--cont--slider">
            <a href="javascript:;" class="partners--cont--item"
               style="background-image: url('./img/license-application-icon.png')"></a>
            <a href="javascript:;" class="partners--cont--item"
               style="background-image: url('./img/citizen-icon.png')"></a>
            <a href="javascript:;" class="partners--cont--item"
               style="background-image: url('./img/e-draft-icon.png')"></a>
            <a href="javascript:;" class="partners--cont--item"
               style="background-image: url('./img/sun-icon.png')"></a>
        </div>
        <div class="partners-1--cont--slider">
            <a href="javascript:;" class="partners--cont--item"
               style="background-image: url('./img/license-application-icon.png')"></a>
            <a href="javascript:;" class="partners--cont--item"
               style="background-image: url('./img/citizen-icon.png')"></a>
            <a href="javascript:;" class="partners--cont--item"
               style="background-image: url('./img/e-draft-icon.png')"></a>
            <a href="javascript:;" class="partners--cont--item"
               style="background-image: url('./img/sun-icon.png')"></a>
        </div>
    </div>
</section>