@extends('layouts.app')
@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url({{ '/storage/'.str_replace('\\', '/', $page->cover_photo) }})">
            <div class="secondary__cover--content">
                <h1>{{ $page->name }}</h1>
            </div>
        </section>

        @if($page->video)
            <div class="container-fluid">
                <div class="row">
                    <div class="offset-md-2 col-md-8 offset-lg-0 col-lg-6">
                        <div class="video__content">
                            <video width="320" height="240" controls>
                                <source src="/storage/{{ $page->video }}" type="video/mp4">
                                <iframe width="80%" height="315"
                                        src="https://www.youtube.com/embed/{{getVideoKey($page->video)}}" frameborder="0"
                                        allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                                </iframe>
                            </video>
                        </div>
                    </div>
                </div>
            </div>
        @endif

        @if($page->description)
            <section class="single__announcement">
                <div class="single__announcement--date">
                    <p></p>
                </div>
                <div class="single__announcement--body">
                    <p class="text-justify editor-content">
                    </p><p>{!! getDescription($page->description) !!}</p>
                    <p></p>
                </div>
            </section>
        @endif

        <section class="legal__acts">
            <div class="legal__acts--container">
                <ul class="legal__acts--list">
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--row d-flex align-items-start">
                                <div class="pdf__text">
                                    <ul>
                                        @foreach($parents->files as $parent)
                                            <li class="d-flex align-items-center">
                                                <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($parent->file_link)}}.png")'></i>
                                                <a class="border-btm ml-5" href="{{$parent->file_link}}" target="_blank">
                                                    <span>{{$parent->name}} <i>{{ $parent->date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($parent->file_link)}}</b></span>
                                                </a>
                                            </li>
                                            @foreach($children->files as $fileInfo)
                                                @if($fileInfo->parent_id ==  $parent->id)
                                                    <li class="d-flex align-items-center child-file">
                                                        <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($fileInfo->file_link)}}.png")'></i>
                                                        <a class="border-btm ml-5" href="{{$fileInfo->file_link}}" target="_blank">
                                                            <span>{{$fileInfo->name}} <i>{{ $fileInfo->date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($fileInfo->file_link)}}</b></span>
                                                        </a>
                                                    </li>
                                                @endif
                                            @endforeach
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
    </main>
@endsection