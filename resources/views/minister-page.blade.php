@include('partials.fb-share-meta', [
    'description' => getDescription($pagesTexts->getTranslatedAttribute('page_text1')) ,
    'image'       => $_SERVER['REQUEST_SCHEME']."://".$_SERVER['SERVER_NAME']."/".Storage::url($coverPhoto->page_cover_photo)
])
@extends('layouts.app')

@section('content')
	<main>
        <section class="secondary__cover aks__minister--cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
        </section>
        <section class="message__container">
            <div class="message__content">
                <h1>{!! __tr('minister_message') !!}</h1>
                <div class="message__content--info d-flex">
                    <div class="message__content--info--image"
                         style="background-image: url('{{Storage::url($content->minister_pic)}}')">
                    </div>
                    <div class="message__content--info--text text-justify editor-content">
                        {!! getDescription($pagesTexts->getTranslatedAttribute('page_text1')) !!}
                    </div>
                </div>
            </div>
            <div class="message__content--1">
                <div class="message__content--1--info text-justify editor-content">
                    {!! !is_null( $pagesTexts->page_text2 ) ? getDescription($pagesTexts->getTranslatedAttribute('page_text2')) : '' !!}
                </div>
            </div>
            <div class="message__content--1">
                <div class="message__content--1--info text-justify editor-content">
                    {!! !is_null( $pagesTexts->page_text3 ) ? getDescription($pagesTexts->getTranslatedAttribute('page_text3')) : '' !!}
                </div>
            </div>
        </section>
        <section class="biography__container">
            <div class="biography__container--header">
                <h1>{!! __tr('biography') !!}</h1>
            </div>
            <ul class="pdf__container">
                @foreach($minInfoCats as $minInfoCat)
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--header">
                                <h1>{{$minInfoCat->getTranslatedAttribute('name')}}</h1>
                            </div>
                            @foreach($minInfoItems as $minInfoItem)
                                @if($minInfoCat->id == $minInfoItem->category_id)
                                    <div class="pdf__info--row d-flex d-flex align-items-center">
                                        <div class="pdf__year pdf__year--large">
                                            @if($minInfoItem->name)
                                                <span>{{$minInfoItem->getTranslatedAttribute('name')}}</span>
                                            @endif
                                        </div>
                                        <div class="pdf__text">
                                            <ul>
                                                <li class="d-flex align-items-center border-btm">
                                                    <!--<i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>-->
                                                    <a href="{{$minInfoItem->url}}" class="">
                                                        <spans>{!! getDescription($minInfoItem->getTranslatedAttribute('description')) !!}<!--<b>265կբ</b>--></spans>
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
            <div class="fb_share_btn">
                <div class="fb-share-button" data-href="{{url()->current()}}" data-layout="button_count"></div>
            </div>
        </section>
        <section class="minister__public--council">
            <div class="minister__public--council--header">
                <a href="{{ route('pages' , 'public-council') }}">{!! __tr('side_public_council') !!}</a>
            </div>
        </section>
        <section class="ask__minister--cont">
            <div class="ask__minister--cont--header">
                <h1>{!! __tr('question_to_minister') !!}</h1>
            </div>
            @include('partials.contact-mail-form')
        </section>
    </main>
@endsection