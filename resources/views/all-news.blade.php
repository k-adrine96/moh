@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
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
                                        <div class="offset-sm-2 col-sm-8 offset-lg-0 col-lg-6">
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
                                                        <a href="{{route('show.news.individual' , $news->id)}}">{{$news->title}}</a>
                                                    </div>
                                                    <div class="all__news--short--description text-justify editor-content">
                                                        {!! $news->description !!}
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
    </main>
@endsection