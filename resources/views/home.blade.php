@extends('layouts.app')

@section('content')
    <main>
        <section class="main__cover">
            @foreach($slidersInfo as $sliderInfo)
                <div class="main__cover--item" style="background-image: url('storage/{{$sliderInfo->image}}')">
                    <div class="main__cover--item-container">
                        <div class="main__cover--item-container-cont">
                            <h2>{!! $sliderInfo->title !!}</h2>
                            <p>{{ strip_tags($sliderInfo->text) }}</p>
                            @if($sliderInfo->url)
                                <a href="{{$sliderInfo->url}}" class="animated__button animated__button--blue-1">Ավելին</a>
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
                                        <div class="news__image--background" style="background-image: url(storage/{{$featuredImage}})"></div>
                                    </div>
                                    <div class="news__info">
                                        <span><?php echo date('d F Y l' , strtotime($singleNews->date)); ?></span>
                                        <h1>{{$singleNews->title}}</h1>
                                        <p>{{ strip_tags($singleNews->description) }}</p>
                                        @if($singleNews->url)
                                            <a href="{{$singleNews->url}}" class="margin-auto animated__button animated__button--blue">Ավելին</a>
                                        @endif
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
                            <p>{{ strip_tags($announcement->description) }}</p>
                            @if($announcement->url)
                                <a href="{{$announcement->url}}" class="animated__button animated__button--yellow-small">Ավելին</a>
                            @endif
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
                                    <span><?php echo date('d F Y l' , strtotime($video->date)); ?></span>
                                    <h1>{{$video->title}}</h1>
                                    @if($video->video_individual_url)
                                        <a href="{{$video->video_individual_url}}" class="margin-auto animated__button animated__button--blue">ավելին</a>
                                    @endif
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
                               style="background-image: url('storage/{{$partner->image}}')"></a>
                        @endforeach
                    </div>
                </div>
            @endforeach
        </section>
        <section class="subscription">
            <div class="subscription__content">
                <div class="subscription__content--header">
                    <h1>բաժանորդագրվել</h1>
                </div>
                <div class="subscription__content--form">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="name"><img src="img/name-icon.png" alt=""></span>
                        </div>
                        <input type="text" class="form-control subs__input" placeholder="Անուն" aria-label="Username"
                               aria-describedby="name">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="email"><img src="img/email-icon.png" alt=""></span>
                        </div>
                        <input type="email" class="form-control subs__input" placeholder="Էլ․ հասցե"
                               aria-label="Username" aria-describedby="email">
                        <a href="javascript:;" class="animated__button animated__button--yellow">բաժանորդագրվել</a>
                    </div>
                </div>
                <div class="subscription__content--info pt-4">
                    <a href="javascript:;">Կարդացեք մեր գաղտնիությունը այստեղ</a>
                </div>
            </div>
        </section>
    </main>
@endsection