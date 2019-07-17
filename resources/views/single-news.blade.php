@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Նորություն</h1>
            </div>
        </section>
        <section class="single__news clearfix">
            @php
                $images = json_decode($newsIndividual->images);
            @endphp
            <div class="single__news--slider">
                @foreach($images as $img)
                    <div class="single__news--image" style="background-image: url('{{Storage::url($img)}}')"></div>
                @endforeach
            </div>
            <div class="single__news--info">
                <div class="single__news--info--header">
                    <h1>{{$newsIndividual->title}}</h1>
                </div>
                <div class="single__news--info--date">
                    <h2>{{date('d F Y l' , strtotime($newsIndividual->date))}}</h2>
                </div>
                <div class="single__news--info--text">
                    {!! getDescription($newsIndividual->description) !!}
                </div>
            </div>
        </section>
    </main>
@endsection