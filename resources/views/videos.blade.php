@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background: #0c5460">
            <div class="secondary__cover--content">
                <h1>Տեսադարան</h1>
            </div>
        </section>
        <section class="videos">
            <ul class="background__zebra">
                @foreach($content->chunk(2) as $chunk)
                    <li>
                        <div class="videos__row">
                            <div class="container-fluid">
                                <div class="row">
                                    @foreach($chunk as $video)
                                        <div class="offset-md-2 col-md-8 offset-lg-0 col-lg-6">
                                            <div class="video__content">
                                                <iframe width="80%" height="315" src="https://www.youtube.com/embed/{{getVideoKey($video->video_url)}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                                <div class="video__content--header">
                                                    <a href="{{route('show.video.individual' , $video->id)}}">{{$video->getTranslatedAttribute('title')}}</a>
                                                </div>
                                                <div class="video__content--date">
                                                    <p>{{ $video->date->formatLocalized('%B %d, %Y') }}</p>
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
    </main>
@endsection