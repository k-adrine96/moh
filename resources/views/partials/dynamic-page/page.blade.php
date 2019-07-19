@extends('layouts.app')
@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url({{ '/storage/'.str_replace('\\', '/', $page->cover_photo) }})">
            <div class="secondary__cover--content">
                <h1>{{ $page->name }}</h1>
            </div>
        </section>

        @if($page->video)
            <section class="videos">
                <div class="videos__row">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="offset-md-2 col-md-8 offset-lg-0 col-lg-6">
                                <div class="video__content">
                                    <video width="320" height="240" controls>
                                        <source src="/storage/{{ $page->video }}" type="video/mp4">
                                    </video>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        @endif

        @if($page->description)
            <section class="single__announcement">
                <div class="single__announcement--date">
                    <p></p>
                </div>
                <div class="single__announcement--body">
                    <p class="text-justify editor-content">
                    </p><p>{!! strip_tags($page->description) !!}</p>
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
                                        @foreach($page->files as $file)
                                            <li class="d-flex align-items-center">
                                                <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($file->file_link)}}.png")'></i>
                                                <a class="border-btm ml-5" href="{{$file->file_link}}" {{ $file->download ?? 'download'}} target="_blank">
                                                    <span>{{$file->name}} <i>{{ $file->created_at->formatLocalized('%B %d, %Y') }} </i></span>
                                                </a>
                                            </li>
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