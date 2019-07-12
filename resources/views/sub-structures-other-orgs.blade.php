@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Այլ կազմակերպություններ</h1>
            </div>
        </section>
        <section class="workers__content">
            <ul>
                @foreach($content->chunk(2) as $chunk)
                    <li>
                        <div class="workers__container d-flex min-worker-cont">
                            @foreach($chunk as $organisation)
                                <div class="worker__info">
                                    <div class="worker__info--header">
                                        <h1>{{!is_null($organisation->organisation_name) ? $organisation->organisation_name : ''}}</h1>
                                    </div>
                                    <div class="worker__info--chief mt-4">
                                        <p>{{!is_null($organisation->head_position) ? $organisation->head_position : ''}}</p>
                                    </div>
                                    <div class="worker__info--name">
                                        <p>{{!is_null($organisation->head_name) ? $organisation->head_name : ''}}</p>
                                    </div>
                                    <ul class="worker__number__email">
                                        <li>
                                            @if(!is_null($organisation->address))
                                                <i class="location-icon"></i>
                                                <span>{{ $organisation->address }}</span>
                                            @endif
                                        </li>
                                        <li>
                                            @if(!is_null($organisation->phone_number))
                                                <i class="call-icon"></i>
                                                <span>{{ $organisation->phone_number }}</span>
                                            @endif
                                        </li>
                                        <li>
                                            @if(!is_null($organisation->email))
                                                <i class="message-icon"></i>
                                                <span>{{ $organisation->email }}</span>
                                            @endif
                                        </li>
                                        <li>
                                            @if(!is_null($organisation->website_name))
                                                <i class="website-icon"></i>
                                                <a href="{{!is_null($organisation->website_url) ? $organisation->website_url : ''}}">
                                                    <span>{{ $organisation->website_name }}</span>
                                                </a>
                                            @endif
                                        </li>
                                    </ul>
                                    <div class="pdf__info">
                                        <div class="pdf__info--row d-flex align-items-start">
                                            <div class="pdf__text">
                                                <ul>
                                                    <li class="d-flex align-items-center">
                                                        <i class="pdf__icon"
                                                           style='background-image: url("/img/{{getFileIcon($organisation->file_link)}}.png")'></i>
                                                        <a class="border-btm ml-5" href="{{$organisation->file_link}}"
                                                           target="_blank">
                                                            <span>{{$organisation->file_name}} <i>{{ $organisation->file_date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($organisation->file_link)}}</b></span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
    </main>
@endsection