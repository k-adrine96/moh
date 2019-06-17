@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/all-news-cover.png')">
            <div class="secondary__cover--content">
                <h1>Նորություններ</h1>
            </div>
        </section>
        <section class="all__news">
            <ul class="background__zebra">
                @foreach($content->chunk(2) as $chunk)
                    <li>
                        <div class="all__news--row">
                            <div class="container-fluid">
                                <div class="row no-gutters">
                                    @foreach($chunk as $news)
                                        <div class="col-sm-6">
                                            <div class="row no-gutters">
                                                <div class="col-sm-12 col-lg-6">
                                                    @php
                                                        $images = json_decode($news->images);
                                                        $featuredImage = $images[0];
                                                    @endphp
                                                    <div class="all__news--image"
                                                         style="background-image: url('{{Storage::url($featuredImage)}}')">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12 pl-3 col-lg-6">
                                                    <div class="all__news--date">
                                                        <span><?php echo date('d F Y l' , strtotime($news->date)); ?></span>
                                                    </div>
                                                    <div class="all__news--header">
                                                        <h1>{{$news->title}}</h1>
                                                    </div>
                                                    <div class="all__news--short--description">
                                                        {{ strip_tags($news->description) }}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
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
                    <a href="javascript:;">Կարդացեք մեր գաղտնիությւոնը այստեղ</a>
                </div>
            </div>
        </section>
    </main>
@endsection