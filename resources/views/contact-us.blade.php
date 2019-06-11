@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/about-us-cover.png')">
            <div class="secondary__cover--content">
                <h1>հետադարձ կապ</h1>
            </div>
        </section>
        <section class="contact__us">
            <div class="contact__us--info">
                <div class="contact__us--info--form">
                    <form action="" class="contact__us--form">
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><img src="img/username-icon.png" alt=""></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Անուն Ազգանուն" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><img src="img/email-1-icon.png" alt=""></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Էլ․ հասցե" aria-label="Username" aria-describedby="basic-addon1">
                        </div>
                        <div class="input-group mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><img src="img/theme-icon.png" alt=""></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Թեմա" aria-label="Username" aria-describedby="">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" placeholder="Հաղորդագրություն"></textarea>
                        </div>
                        <div class="contact__us--btns d-flex justify-content-center">
                            <a href="javascript:;" class="animated__button animated__button--yellow">ջնջել</a>
                            <a href="javascript:;" class="animated__button animated__button--blue-1">ուղարկել</a>
                        </div>
                    </form>
                </div>
                <div class="contact__us--info--map">
                    <div id="map"></div>
                </div>
            </div>
            <div class="contact__us--cont">
                <div class="contact__us--cont--text1">
                    <h1>Հարգելի այցելու,</h1>
                    <ul>
                        <li>այս էջի միջոցով կարող եք առցանց դիմում գրել կամ
                            տեղեկատվություն ստանալու համար պաշտոնական
                            հարցում ուղարկել: Հարցման պարագայում խնդրում
                            ենք օգտվել տեղեկատվության հարցման օրինակելի ձևից:
                        </li>
                        <li>Դիմումի ձևը` <a href="javascript:;" class="xls-file">այստեղ</a></li>
                        <li>Տեղեկացնում ենք, որ դիմումը և հարցումը պետք է
                            ստորագրված լինեն: Դիմումը կամ հարցումը ստանալուց
                            հետո էլեկտրոնային փոստով Ձեզ կտրամադրվի 12
                            նիշանոց հսկիչ համար, որը մուտքագրելով այս
                            դաշտում, կարող եք նաև առցանց հետևել նամակի
                            ընթացքին:</li>
                    </ul>
                </div>
            </div>
            <ul class="contact__us--text2">
                <li>Տեղեկատվության ազատության համար պատասխանատու պաշտոնատար անձ <span>Լիլիթ Բաբախանյան</span>,</li>
                <li>ՀՀ ԱՆ աշխատակազմի հասարակայնության հետ կապերի բաժին</li>
                <li>Հեռ. (+374 60) 80-80-03 / 2301; 2302,</li>
                <li>էլ. փոստ՝ <a href="javascript:;">pr@moh.am</a></li>
            </ul>

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