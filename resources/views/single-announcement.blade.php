@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/single-news-cover.png')">
            <div class="secondary__cover--content">
                <h1>հայտարարություններ</h1>
            </div>
        </section>
        <section>
            <div class="announcements--cont--slider--items">
                <h1>{{$announcementIndividual->title}}</h1>
                <p>{{ strip_tags($announcementIndividual->description) }}</p>
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