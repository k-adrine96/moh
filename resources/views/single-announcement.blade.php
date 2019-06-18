@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>հայտարարություններ</h1>
            </div>
        </section>
        <section class="single__announcement">
            <div class="single__announcement--header">
                <h1>{{$announcementIndividual->title}}</h1>
            </div>
            <div class="single__announcement--date">
                <p><?php echo date('d F Y l' , strtotime($announcementIndividual->date)); ?></p>
            </div>
            <div class="single__announcement--body">
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