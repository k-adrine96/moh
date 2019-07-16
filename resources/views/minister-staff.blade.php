@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Նախարարի աշխատակազմ</h1>
            </div>
        </section>
        <section class="minister__staff">
            @foreach($content->chunk(2) as $chunk)
                <div class="minister__staff--container minister__staff--desktop">
                    <div class="minister__staff--container--width">
                        @foreach($chunk as $staffMember)
                            <div class="workers__info">
                                <div class="workers__info--image"
                                     style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                <div class="workers__info--content">
                                    <div class="workers__info--content--names">
                                        <h1>{{$staffMember->position}}</h1>
                                        <a class="kuku" href="javascript:;"
                                           data-for="workers__container-{{$staffMember->id}}">{{$staffMember->name}}</a>
                                    </div>
                                    <ul class="worker__number__email">
                                        <li>
                                            <i class="call-icon"></i>
                                            <span>{{$staffMember->phone_number}}</span>
                                        </li>
                                        <li>
                                            <i class="message-icon"></i>
                                            <a href="mailto:toid@example.com?Subject=subject here&Body=bodytext">{{$staffMember->email}}</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                @foreach($chunk as $staffMember)
                    @include('partials.minister-staff-member-info')
                @endforeach
            @endforeach
            <ul class="minister__structure--mobile">
                @foreach($content as $staffMember)
                    <li>
                        <div class="minister__staff--container minister__staff--mobile">
                            <div class="minister__staff--container--width">
                                <div class="workers__info">
                                    <div class="workers__info--image"
                                         style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                    <div class="workers__info--content">
                                        <div class="workers__info--content--names">
                                            <h1>{{$staffMember->position}}</h1>
                                            <a class="mobile-name" href="javascript:;" data-for="mobile-workers-container-{{$staffMember->id}}">{{$staffMember->name}}</a>
                                        </div>
                                        <ul class="worker__number__email">
                                            <li>
                                                <i class="call-icon"></i>
                                                <span>{{$staffMember->phone_number}}</span>
                                            </li>
                                            <li>
                                                <i class="message-icon"></i>
                                                <a href="mailto:toid@example.com?Subject=subject here&Body=bodytext">{{$staffMember->email}}</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mobile-workers-container editor-content workers__container mobile-workers-container-{{$staffMember->id}}">
                            <div class="workers__container--info">
                                {!! $staffMember->text !!}
                            </div>
                            <div class="workers__container--name">
                                <h1>{{ $staffMember->name }}</h1>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
    </main>
@endsection