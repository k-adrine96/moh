@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Տեսադարան</h1>
            </div>
        </section>
        <section class="single__video">
            <div class="single__video--header">
                <h1>{{$videoIndividual->title}}</h1>
            </div>
            <div class="single__video--date">
                <p><?php echo date('d F Y l' , strtotime($videoIndividual->date)); ?></p>
            </div>
            <div class="single__video--video text-center m-auto">
                <?php $videoKey = explode('/', $videoIndividual->video_url)[3]; ?>
                <iframe class="video" width="100%" height="700px"
                        src="https://www.youtube.com/embed/{{$videoKey}}">
                </iframe>
            </div>
        </section>
    </main>
@endsection