@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{!! __tr('side_screening') !!}</h1>
            </div>
        </section>
        <section class="legal__acts">
            <div class="legal__acts--container">
                <ul class="legal__acts--list">
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--row d-flex align-items-start">
                                <div class="pdf__text">
                                    <ul>
                                        @foreach($parents as $parent)
                                            <li class="d-flex align-items-center">
                                                <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($parent->file_link)}}.png")'></i>
                                                <a class="border-btm ml-5" href="{{$parent->file_link}}" target="_blank">
                                                    <span>{{$parent->getTranslatedAttribute('file_name')}} <i>{{ $parent->file_date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($parent->file_link)}}</b></span>
                                                </a>
                                            </li>
                                            @foreach($filesInfo as $fileInfo)
                                                @if( $fileInfo->parent_id ==  $parent->id)
                                                    <li class="d-flex align-items-center child-file">
                                                        <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($fileInfo->file_link)}}.png")'></i>
                                                        <a class="border-btm ml-5" href="{{$fileInfo->file_link}}" target="_blank">
                                                            <span>{{$fileInfo->getTranslatedAttribute('file_name')}} <i>{{ $fileInfo->file_date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($fileInfo->file_link)}}</b></span>
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