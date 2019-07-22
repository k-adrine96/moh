@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Բյուջե</h1>
            </div>
        </section>
        <section class="budget-container">
            <ul class="pdf__container">
                @foreach($filesCats as $filesCat)
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--row d-flex align-items-start">
                                <div class="pdf__year pdf__year--small">
                                    <span>{{$filesCat->year}}</span>
                                </div>
                                <div class="pdf__text">
                                    <ul>
                                        @foreach($filesInfo as $fileInfo)
                                            @if($fileInfo->category_id == $filesCat->id)
                                                <li class="d-flex align-items-center">
                                                    <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($fileInfo->file_link)}}.png")'></i>
                                                    <a class="border-btm ml-5" href="{{$fileInfo->file_link}}" target="_blank">
                                                        <span>{{$fileInfo->file_name}} <i>{{ $fileInfo->file_date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($fileInfo->file_link)}}</b></span>
                                                    </a>
                                                </li>
                                            @endif
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
    </main>
@endsection