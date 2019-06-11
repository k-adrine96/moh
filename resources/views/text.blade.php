@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/mission-cover.png')">
            <div class="secondary__cover--content">
                <h1>Առաքելություն</h1>
            </div>
        </section>
        <section class="only__text">
            <p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը
                մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության
                քաղաքականությունը:</p>
            <p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող
                տեսչական մարմնից:</p>
            <p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական
                նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության
                ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման
                կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության
                առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը,
                հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>
            <p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց
                կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը,
                նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական
                ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի
                գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության
                նախարարության կողմից:</p>
            <p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ
                իրավական ակտերին համապատաuխան:</p>
            <p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում
                մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:</p>
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