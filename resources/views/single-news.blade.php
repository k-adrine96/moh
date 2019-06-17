@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('/img/single-news-cover.png')">
            <div class="secondary__cover--content">
                <h1>Նորություն</h1>
            </div>
        </section>
        <section class="single__news">
            @php
                $images = json_decode($newsIndividual->images);
                $featuredImage = $images[0];
            @endphp
            @foreach($images as $img)
                {{--<div class="single__news--image" style="background-image: url('{{Storage::url($img)}}')"></div>--}}
            @endforeach
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-xl-7"><div class="single__news--info">
                            <div class="single__news--info--header">
                                <h1>{{$newsIndividual->title}}</h1>
                            </div>
                            <div class="single__news--info--date">
                                <h2><?php echo date('d F Y l' , strtotime($newsIndividual->date)); ?></h2>
                            </div>
                            <div class="single__news--info--text">
                                {{ strip_tags($newsIndividual->description) }}
                            </div>
                        </div></div>
                    <div class="col-lg-6 col-xl-5">
                        <div class="news-slider">
                            @foreach($images as $img)
                                <div class="single__news--image" style="background-image: url('{{Storage::url($img)}}')"></div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>


        </section>
        <section class="partners">
            <div class="partners--cont">
                <div class="partners--cont--slider">
{{--                    <a href="javascript:;" class="partners--cont--item"--}}
{{--                       style="background-image: url('img/license-application-icon.png')"></a>--}}
{{--                    <a href="javascript:;" class="partners--cont--item"--}}
{{--                       style="background-image: url('img/citizen-icon.png')"></a>--}}
{{--                    <a href="javascript:;" class="partners--cont--item"--}}
{{--                       style="background-image: url('img/e-draft-icon.png')"></a>--}}
{{--                    <a href="javascript:;" class="partners--cont--item"--}}
{{--                       style="background-image: url('img/sun-icon.png')"></a>--}}
                </div>
            </div>
        </section>
        <section class="subscription">
            <div class="subscription__content">
                <div class="subscription__content--header">
                    <h1>բաժանորդագրվել</h1>
                </div>
                <div class="subscription__content--form">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="name"><img src="/img/name-icon.png" alt=""></span>
                        </div>
                        <input type="text" class="form-control subs__input" placeholder="Անուն" aria-label="Username"
                               aria-describedby="name">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="email"><img src="/img/email-icon.png" alt=""></span>
                        </div>
                        <input type="email" class="form-control subs__input" placeholder="Էլ․ հասցե"
                               aria-label="Username" aria-describedby="email">
                        <a href="javascript:;" class="animated__button animated__button--yellow">բաժանորդագրվել</a>
                    </div>
                </div>
                <div class="subscription__content--info pt-4">
                    <a href="javascript:;">Կարդացեք մեր գաղտնիությւոնը այստեղ</a>
                </div>
            </div>
        </section>
    </main>
@endsection