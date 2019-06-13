@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/single-news-cover.png')">
            <div class="secondary__cover--content">
                <h1>Նորություն</h1>
            </div>
        </section>
        <section class="single__news">
            <div class="single__news--image" style="background-image: url('img/single-news-1.png')"></div>
            <div class="single__news--info">
                <div class="single__news--info--header">
                    <h1>Սուր շնչառական վարակների ուղղությամբ
                        համաճարակաբանական դիտարկումները
                        շարունակվում են</h1>
                </div>
                <div class="single__news--info--date">
                    <h2>16 Հունվարի 2019 չորեքշաբթի</h2>
                </div>
                <div class="single__news--info--text">
                    <p>Ինչպես արդեն տեղեկացրել էինք վերջին օրերին դիտվում էր
                        սուր շնչառական վարակներով պայմանավորված
                        իրավիճակի կայունացում: Փետրվարի 16-ի դրությամբ կարելի է
                        փաստել, որ իրավիճակի կայունացման միտումը
                        դեռևս շարունակվում է:</p>
                    <p>Այսպես՝ այսօրվա դրությամբ նվազել են հանրապետության
                        հիվանդանոցներում հոսպիտալացված դեպքերը,
                        ներկայումս սուր շնչառական վարակներով 702 հիվանդ,
                        որոնց գերակշիռ մասը դեռևս շարունակվում է բաժին
                        ընկնել 0-5 տարեկան երեխաներին: Հոսպիտալներից
                        առողջացումով դուրս է 147 պացիենտ, որից միայն 114-ը՝
                        Երևանի թիրախային մանկական հիվանդանոցներից: </p>
                    <p>Կայունացում է դիտվում նաև սուր շնչառական վարակներով պայմանավորված շտապօգնության կանչերում՝ 88
                        կանչ: Ինչ վերաբերում է պոլիկլինիկական դիմելիությանը, ապա սուր շնչառական վարակներին բնորոշ
                        գանգատներով դիմել է 162 անձ:
                    </p>
                    <p>Ներկայացված տվյալների հավաստիության պարզաբանման նպատակով՝ առողջապահության նախարարության կողմից
                        շրջայցներ են կատարվել Երևանի մանկական հիվանդանոցներ, ինչը ևս մեկ անգամ փաստում է առկա իրավիճակի
                        և զարգացման միտումներին հետամուտ լինելու և արդեն իսկ ձեռնարկված անհրաժեշտ միջոցառումների
                        շարունակական իրականացման մասին:</p>
                    <p>Հարկ է նշել, որ մանկական հիվանդանոցների ծանրաբեռնված աշխատանքներին նպաստում են նաև ստացիոնար
                        կազմակերպությունների անձնակազմի կողմից ամբուլատոր սպասարկումները:</p>
                    <p>Ինչ վերաբերում է ներկայումս հանրապետությունում շրջանառող հարուցինչներին, ապա պետք է նշել, որ
                        համաձայն իրականացված լաբորատոր հետազոտությունների արդյունքների հանրապետությունում շրջանառում է
                        գրիպի Ա տեսակի H1N1 և H3N2 ենթատեսակները:</p>

                </div>
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