@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/biography.png')">
            <div class="secondary__cover--content">
                <h1>Հաստիքացուցակ</h1>
            </div>
        </section>
        <section class="grant-container">
            <ul class="pdf__container">
                <li>
                    <div class="pdf__info">
                        <div class="pdf__info--row d-flex align-items-start">
                            <div class="pdf__text">
                                <ul>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>Հայաստանի Հանրապետության առողջապահության
                                                նախարարության աշխատակազմի կառուցվածքային և
                                                առանձնացված ստորաբաժանումների հաստիքացուցակները
                                                հաստատելու մասին («20» փետրվար 2018թ. N 21-Ա)
                                                <b>(529կբ)</b>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>ՀՀ առողջապահության նախարարության կենտրոնական ապարատ
                                                <b>(77կբ)</b>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>ՀՀ առողջապահության նախարարության աշխատակազմի
                                                պետական առողջապահական գործակալություն
                                                <b>(55կբ)</b>
                                            </span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>ՀՀ առողջապահության նախարարության աշխատակազմի լիցենզավորման գործակալություն
                                                <b>(97կբ)</b>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
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