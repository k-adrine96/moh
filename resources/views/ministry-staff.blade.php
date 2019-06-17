@extends('layouts.app')

@section('content')
	<main>
        <section class="secondary__cover aks__minister--cover" style="background-image: url('img/ministry staff-cover.png')">
            <div class="secondary__cover--content">
                <h1>Նախարարության աշխատակազմ</h1>
            </div>
        </section>
        <section class="workers__content">
            <ul>
                @foreach($content->chunk(2) as $chunk)
                    <li>
                        <div class="workers__container d-flex">
                            @foreach($chunk as $staffMember)
                                <div class="worker__info">
                                    <div class="worker__info--header">
                                        <h1>{{$staffMember->position}}</h1>
                                    </div>
                                    <div class="worker__info--name">
                                        <p>{{$staffMember->name}}</p>
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
                            @endforeach
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
        <section class="partners">
            <div class="partners--cont">
                <div class="partners--cont--slider">
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('./img/license-application-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('./img/citizen-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('./img/e-draft-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('./img/sun-icon.png')"></a>
                </div>
            </div>
        </section>
        <section class="subscription">
            <div class="subscription__content">
                <div class="subscription__content--header">
                    <h1>բաժանորդագրվել</h1>
                </div>
                <div class="subscription__content--form">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="name"><img src="/img/name-icon.png" alt=""></span>
                        </div>
                        <input type="text" class="form-control subs__input" placeholder="Անուն" aria-label="Username"
                               aria-describedby="name">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="email"><img src="/img/email-icon.png" alt=""></span>
                        </div>
                        <input type="email" class="form-control subs__input" placeholder="Էլ․ հասցե"
                               aria-label="Username" aria-describedby="email">
                        <a href="javascript:;" class="animated__button animated__button--yellow">բաժանորդագրվել</a>
                    </div>
                </div>
                <div class="subscription__content--info pt-4">
                    <a href="javascript:;">Կարդացեք մեր գաղտնիությւոնը այստեղ</a>
                </div>
            </div>
        </section>
    </main>
@endsection