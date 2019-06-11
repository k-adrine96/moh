@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/biography.png')">
            <div class="secondary__cover--content">
                <h1>Կանոնադրություն</h1>
            </div>
        </section>
        <section class="charter-container">
            <div class="charter-content">
                <ul class="pdf__container">
                    <li class="text-center">
                        <div class="pdf__info">
                            <h1>Հայաստանի Հանրապետության վարչապետ</h1>
                            <h2>որոշում</h2>
                            <h3>11 հունիսի 2018 թվականի N 728-L</h3>
                        </div>
                    </li>
                    <li>
                        <div class="pdf__info">
                            <h1>Հայաստանի Հանրապետության առողջապահության նախարարության կանոնադրությունը հաստատելու
                                մասին</h1>
                            <p>Հիմք ընդունելով << Պետական կառավարման համակարգի մարմինների մասին>> Հայաստանի
                                Հանրապետության
                                օրենքի 7-րդ հոդվածի 9-րդ մասը և << Կառավարության կառուցվածքի և գործունեության մասին>>
                                Հայստանի Հանրապետության օրենքի 7-րդ հոդվածի 10-րդ մասը՝</p>
                            <p>Հաստատել Հայաստանի Հանրապետության առոջղապահության նախարարության կանոնադրությունը՝
                                համաձայն
                                հավելվածի</p>
                            <p>Հայաստանի Հանրապետության վարչապետ <strong> Ն․ Փաշինյան </strong></p>
                        </div>
                    </li>
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--row d-flex align-items-start">
                                <div class="pdf__text">
                                    <ul>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                            <span class="border-btm">սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <section class="partners">
            <div class="partners--cont">
                <div class="partners--cont--slider">
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/license-application-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/citizen-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/e-draft-icon.png')"></a>
                    <a href="javascript:;" class="partners--cont--item"
                       style="background-image: url('img/sun-icon.png')"></a>
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