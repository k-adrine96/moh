@extends('layouts.app')

@section('content')
	<main>
        <section class="secondary__cover aks__minister--cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
        </section>
        <section class="message__container">
            <div class="message__content">
                <h1>Ուղերձ</h1>
                <div class="message__content--info d-flex">
                    <div class="message__content--info--image"
                         style="background-image: url('{{Storage::url($content->minister_pic)}}')">
                    </div>
                    <div class="message__content--info--text text-justify editor-content">
                        {!! getDescription($pagesTexts->page_text1) !!}
                    </div>
                </div>
            </div>
            <div class="message__content--1">
                <div class="message__content--1--info text-justify editor-content">
                    {!! !is_null( $pagesTexts->page_text2 ) ? getDescription($pagesTexts->page_text2) : '' !!}
                </div>
            </div>
            <div class="message__content--1">
                <div class="message__content--1--info text-justify editor-content">
                    {!! !is_null( $pagesTexts->page_text3 ) ? getDescription($pagesTexts->page_text3) : '' !!}
                </div>
            </div>
        </section>
        <section class="biography__container">
            <div class="biography__container--header">
                <h1>կենսագրություն</h1>
            </div>
            <ul class="pdf__container">
                @foreach($minInfoCats as $minInfoCat)
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--header">
                                <h1>{{$minInfoCat->name}}</h1>
                            </div>
                            @foreach($minInfoItems as $minInfoItem)
                                @if($minInfoCat->id == $minInfoItem->category_id)
                                    <div class="pdf__info--row d-flex d-flex align-items-center">
                                        <div class="pdf__year pdf__year--large">
                                            @if($minInfoItem->name)
                                                <span>{{$minInfoItem->name}}</span>
                                            @endif
                                        </div>
                                        <div class="pdf__text">
                                            <ul>
                                                <li class="d-flex align-items-center border-btm">
                                                    <!--<i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>-->
                                                    <a href="{{$minInfoItem->url}}" class="">
                                                        <spans>{!! $minInfoItem->description !!}<!--<b>265կբ</b>--></spans>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
        <section class="minister__public--council">
            <div class="minister__public--council--header">
                <a href="{{ route('pages' , 'public-council') }}">նախարարին կից հասարակական խորհուրդ</a>
            </div>
        </section>
        <section class="ask__minister--cont">
            <div class="ask__minister--cont--header">
                <h1>հարց նախարարին</h1>
            </div>
            <div class="ask__minister">
                <div class="ask__minister--content">
                    <h1>Սիրով սպասում ենք Ձեր հարցերին</h1>
                    <form action="" class="ask__minister--form">
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><img src="/img/username-icon.png" alt=""></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Անուն Ազգանուն" aria-label="Username"
                                   aria-describedby="basic-addon1">
                        </div>
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><img src="/img/email-1-icon.png" alt=""></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Էլ․ հասցե" aria-label="Username"
                                   aria-describedby="basic-addon1">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" placeholder="Հաղորդագրություն"></textarea>
                        </div>
                        <div class="ask__minister--btns d-flex justify-content-center">
                            <a href="javascript:;" class="animated__button animated__button--yellow">ջնջել</a>
                            <a href="javascript:;" class="animated__button animated__button--blue-1">ուղարկել</a>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </main>
@endsection