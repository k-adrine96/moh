@extends('layouts.app')

@section('content')
	<main>
        <section class="secondary__cover" style="background-image: url('img/minister-staff.png')">
            <div class="secondary__cover--content">
                <h1>Նախարարի աշխատակազմ</h1>
            </div>
        </section>
        <section class="minister__staff">
            @foreach($content->chunk(2) as $chunk)
                <div class="minister__staff--container">
                    <div class="minister__staff--container--width">
                        @foreach($chunk as $staffMember)
                            <div class="workers__info">
                                <div class="workers__info--image" style="background-image: url('{{Storage::url($staffMember->image)}}')"></div>
                                <div class="workers__info--content">
                                    <div class="workers__info--content--names">
                                        <h1>{{$staffMember->position}}</h1>
                                        <a class="kuku" href="javascript:;" data-for="workers__container-{{$staffMember->id}}">{{$staffMember->name}}</a>
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
        </section>
        <section class="partners">
            <div class="partners--cont">
                <div class="partners--cont--slider">
                    @foreach($partners as $partner)
                        <a href="{{$partner->url}}" class="partners--cont--item"
                           style="background-image: url('{{Storage::url($partner->image)}}')"></a>
                    @endforeach
                </div>
            </div>
        </section>
    </main>
@endsection