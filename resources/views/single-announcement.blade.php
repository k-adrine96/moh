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
                <p>{!! $announcementIndividual->description !!}</p>
            </div>
        </section>
    </main>
@endsection