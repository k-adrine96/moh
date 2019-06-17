@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/single-news-cover.png')">
            <div class="secondary__cover--content">
                <h1>հայտարարություններ</h1>
            </div>
        </section>
        <section>
            <div class="video__items">
                <div class="mobile-video-card">
                    <div class="video__items--video">
                        <?php $videoKey = explode('/', $videoIndividual->video_url)[3]; ?>
                        <iframe class="video" width="90%" height="320px"
                                src="https://www.youtube.com/embed/{{$videoKey}}">
                        </iframe>
                    </div>
                    <div class="video__items--text">
                        <span><?php echo date('d F Y l' , strtotime($videoIndividual->date)); ?></span>
                        <h1>{{$videoIndividual->title}}</h1>
                    </div>
                </div>
            </div>
        </section>
        <section class="partners">
            <div class="partners--cont">
                <div class="partners--cont--slider">
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/license-application-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/citizen-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/e-draft-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/sun-icon.png')"></a>
                </div>
            </div>
        </section>
    </main>
@endsection