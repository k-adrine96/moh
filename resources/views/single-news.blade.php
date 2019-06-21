@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Նորություն</h1>
            </div>
        </section>
        <section class="single__news">
            @php
                $images = json_decode($newsIndividual->images);
                $featuredImage = $images[0];
            @endphp
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
                                <p>{!! $newsIndividual->description !!}</p>
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
    </main>
@endsection