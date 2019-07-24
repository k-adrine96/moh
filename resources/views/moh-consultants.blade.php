@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Ան խորհրդատուներ</h1>
            </div>
        </section>
        <section class="workers__content">
            <ul>
                @foreach($content->chunk(2) as $chunk)
                    <li>
                        <div class="workers__container d-flex min-worker-cont">
                            @foreach($chunk as $consultant)
                                <div class="worker__info min-worker">
                                    <div class="worker__info--header">
                                        <h1>{{!is_null($consultant->position) ? $consultant->getTranslatedAttribute('position') : ''}}</h1>
                                    </div>
                                    <div class="worker__info--name">
                                        <p>{{!is_null($consultant->name) ? $consultant->getTranslatedAttribute('name') : ''}}</p>
                                    </div>
                                    <ul class="worker__number__email">
                                        @if(!is_null($consultant->phone_number))
                                            <li>
                                                <i class="call-icon"></i>
                                                <span>{{$consultant->phone_number}}</span>
                                            </li>
                                        @endif
                                        @if(!is_null($consultant->email))
                                            <li>
                                                <i class="message-icon"></i>
                                                <a href="mailto:toid@example.com?Subject=subject here&Body=bodytext">{{$consultant->email}}</a>
                                            </li>
                                        @endif
                                        @if(!is_null($consultant->working_place))
                                            <li>
                                                <i class="location-icon"></i>
                                                <span>{{$consultant->getTranslatedAttribute('working_place')}}</span>
                                            </li>
                                        @endif
                                    </ul>
                                    {{--<div class="worker__info--header">--}}
                                    {{--<p>{{!is_null($consultant->working_place) ? $consultant->working_place : ''}}</p>--}}
                                    {{--</div>--}}
                                </div>
                            @endforeach
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
    </main>
@endsection