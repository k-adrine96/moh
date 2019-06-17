@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/single-news-cover.png')">
            <div class="secondary__cover--content">
                <h1>Նորություն</h1>
            </div>
        </section>
        <section class="single__news">
            @php
                $images = json_decode($newsIndividual->images);
                $featuredImage = $images[0];
            @endphp
            {{--@foreach($images as $img)
                <div class="single__news--image" style="background-image: url('{{Storage::url($img)}}')"></div>
            @endforeach--}}
            <div class="single__news--image" style="background-image: url('{{Storage::url($featuredImage)}}')"></div>
            <div class="single__news--info">
                <div class="single__news--info--header">
                    <h1>{{$newsIndividual->title}}</h1>
                </div>
                <div class="single__news--info--date">
                    <h2><?php echo date('d F Y l' , strtotime($newsIndividual->date)); ?></h2>
                </div>
                <div class="single__news--info--text">
                    {{ strip_tags($newsIndividual->description) }}
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
    </main>
@endsection