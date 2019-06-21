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
                                            <span>{{$staffMember->email}}</span>
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
                <li>
                    <div class="minister__staff--container minister__staff--mobile">
                        <div class="minister__staff--container--width">
                            <div class="workers__info">
                                <div class="workers__info--image"
                                     style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                <div class="workers__info--content">
                                    <div class="workers__info--content--names">
                                        <h1>dafgadfgdfgadg</h1>
                                        <a class="mobile-name" href="javascript:;" data-for="mobile-workers-container-1">Name</a>
                                    </div>
                                    <ul class="worker__number__email">
                                        <li>
                                            <i class="call-icon"></i>
                                            <span>dafggdfagadfgdg</span>
                                        </li>
                                        <li>
                                            <i class="message-icon"></i>
                                            <span>dfhgdfgdfg</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mobile-workers-container editor-content workers__container mobile-workers-container-1">
                        <div class="workers__container--info">
                            aksjhfjksahfjhsaf
                        </div>
                        <div class="workers__container--name">
                            <h1>name</h1>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="minister__staff--container minister__staff--mobile">
                        <div class="minister__staff--container--width">
                            <div class="workers__info">
                                <div class="workers__info--image"
                                     style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                <div class="workers__info--content">
                                    <div class="workers__info--content--names">
                                        <h1>dafgadfgdfgadg</h1>
                                        <a class="mobile-name" href="javascript:;" data-for="mobile-workers-container-2">Name</a>
                                    </div>
                                    <ul class="worker__number__email">
                                        <li>
                                            <i class="call-icon"></i>
                                            <span>dafggdfagadfgdg</span>
                                        </li>
                                        <li>
                                            <i class="message-icon"></i>
                                            <span>dfhgdfgdfg</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mobile-workers-container editor-content workers__container mobile-workers-container-2">
                        <div class="workers__container--info">
                            aksjhfjksahfjhsaf
                        </div>
                        <div class="workers__container--name">
                            <h1>name</h1>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="minister__staff--container minister__staff--mobile">
                        <div class="minister__staff--container--width">
                            <div class="workers__info">
                                <div class="workers__info--image"
                                     style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                <div class="workers__info--content">
                                    <div class="workers__info--content--names">
                                        <h1>dafgadfgdfgadg</h1>
                                        <a class="mobile-name" href="javascript:;" data-for="mobile-workers-container-3">Name</a>
                                    </div>
                                    <ul class="worker__number__email">
                                        <li>
                                            <i class="call-icon"></i>
                                            <span>dafggdfagadfgdg</span>
                                        </li>
                                        <li>
                                            <i class="message-icon"></i>
                                            <span>dfhgdfgdfg</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mobile-workers-container editor-content workers__container mobile-workers-container-3">
                        <div class="workers__container--info">
                            <p>sdafsdfsdfsdf</p>
                        </div>
                        <div class="workers__container--name">
                            <h1>name</h1>
                        </div>
                    </div>
                </li>
            </ul>
        </section>
    </main>
@endsection