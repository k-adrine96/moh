@extends('layouts.app')

@section('content')
	<main>
        <section class="secondary__cover aks__minister--cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{!! __tr('side_ministry_staff') !!}</h1>
            </div>
        </section>
        <section class="workers__content">
            <ul>
                @foreach($content->chunk(2) as $chunk)
                    <li>
                        <div class="workers__container d-flex min-worker-cont">
                            @foreach($chunk as $staffMember)
                                <div class="worker__info min-worker">
                                    <div class="worker__info--header">
                                        <h1>{{$staffMember->getTranslatedAttribute('position')}}</h1>
                                    </div>
                                    <div class="worker__info--name">
                                        <p>{{$staffMember->getTranslatedAttribute('name')}}</p>
                                    </div>
                                    <ul class="worker__number__email">
                                        @if(!is_null($staffMember->phone_number))
                                            <li>
                                                <i class="call-icon"></i>
                                                <span>{{$staffMember->phone_number}}</span>
                                            </li>
                                        @endif
                                        @if(!is_null($staffMember->email))
                                            <li>
                                                <i class="message-icon"></i>
                                                <a href="mailto:toid@example.com?Subject=subject here&Body=bodytext">{{$staffMember->email}}</a>
                                            </li>
                                        @endif
                                    </ul>
                                </div>
                            @endforeach
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
    </main>
@endsection