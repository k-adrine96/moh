@extends('layouts.app')

@section('content')
	<main>
        <section class="secondary__cover aks__minister--cover"
                 style="background-image: url('img/minitser-page-cover.png')">
        </section>
        <section class="message__container">
            <div class="message__content">
                <h1>Ուղերձ</h1>
                <div class="message__content--info d-flex">
                    <div class="message__content--info--image"
                         style="background-image: url('{{Storage::url($content->minister_pic)}}')">
                    </div>
                    <div class="message__content--info--text">
                        {!! $pagesTexts->page_text1 !!}
                    </div>
                </div>
            </div>
            <div class="message__content--1">
                <div class="message__content--1--info">
                    @if($pagesTexts->page_text2)
                        {!! $pagesTexts->page_text2 !!}
                    @endif
                </div>
            </div>
        </section>
        <section class="biography__container">
            <div class="biography__container--header">
                <h1>կենսագրություն</h1>
            </div>
            <ul class="pdf__container">
                <li>
                    <div class="pdf__info">
                        <div class="pdf__info--header">
                            <h1>կրթություն</h1>
                        </div>
                        @foreach($educationInfos as $educationInfo)
                            <div class="pdf__info--row d-flex d-flex align-items-center">
                                <div class="pdf__year pdf__year--large">
                                    @if($educationInfo->name)
                                        <span>{{$educationInfo->name}}</span>
                                    @endif
                                </div>
                                <div class="pdf__text">
                                    <ul>
                                        <li class="d-flex align-items-center border-btm">
                                            <!--<i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>-->
                                            <a href="{{$educationInfo->url}}" class="">
                                                <span>{{$educationInfo->description}}<!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </li>
                <li>
                    <div class="pdf__info">
                        <div class="pdf__info--header">
                            <h1>Աշխատանքային գործունեություն</h1>
                        </div>
                        @foreach($workInfos as $workInfo)
                            <div class="pdf__info--row d-flex align-items-center">
                                <div class="pdf__year pdf__year--large">
                                    @if($workInfo->name)
                                        <span>{{$workInfo->name}}</span>
                                    @endif
                                </div>
                                <div class="pdf__text">
                                    <ul>
                                        <li class="d-flex align-items-center border-btm">
                                            <!--<i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>-->
                                            <a href="{{$workInfo->url}}" class="">
                                                <span>{{$workInfo->description}} <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </li>
                <li>
                    <div class="pdf__info">
                        <div class="pdf__info--header">
                            <h1>այլ տվյալներ</h1>
                        </div>
                        @foreach($otherInfos as $otherInfo)
                            <div class="pdf__info--row d-flex align-items-center">
                                <div class="pdf__year pdf__year--large">
                                    @if($otherInfo->name)
                                        <span>{{$otherInfo->name}}</span>
                                    @endif
                                </div>
                                <div class="pdf__text">
                                    <ul>
                                        <li class="d-flex align-items-center border-btm">
                                            <!--<i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>-->
                                            <a href="{{$otherInfo->url}}" class="">
                                                <span>{{$otherInfo->description}}<!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </li>
                <li>
                    <div class="pdf__info">
                        <div class="pdf__info--header">
                            <h1>անձնական տվյալներ</h1>
                        </div>
                        <div class="pdf__info--row pdf__info--img--text d-flex align-items-center">
                            <div class="biography__content--image"
                                 style="background-image: url('{{Storage::url($content->minister_personal_info_pic)}}')">
                            </div>
                            <div class="biography__text">
                                <p>{{$content->minister_personal_info_pic_title}}</p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
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
                                <span class="input-group-text"><img src="img/username-icon.png" alt=""></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Անուն Ազգանուն" aria-label="Username"
                                   aria-describedby="basic-addon1">
                        </div>
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><img src="img/email-1-icon.png" alt=""></span>
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
                            <span class="input-group-text" id="name"><img src="img/name-icon.png" alt=""></span>
                        </div>
                        <input type="text" class="form-control subs__input" placeholder="Անուն" aria-label="Username"
                               aria-describedby="name">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="email"><img src="img/email-icon.png" alt=""></span>
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