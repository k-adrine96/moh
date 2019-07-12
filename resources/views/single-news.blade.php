@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Նորություն</h1>
            </div>
        </section>
        <section class="single__news clearfix">
            <div class="single__news--slider">
                <div class="single__news--image" style="background-image: url('img/single-news-1.png')"></div>
                <div class="single__news--image" style="background-image: url('img/single-news-1.png')"></div>
                <div class="single__news--image" style="background-image: url('img/single-news-1.png')"></div>
            </div>
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
        {{--<section class="single__news">--}}
        {{--@php--}}
        {{--$images = json_decode($newsIndividual->images);--}}
        {{--$featuredImage = $images[0];--}}
        {{--@endphp--}}
        {{--<div class="container-fluid">--}}
        {{--<div class="row">--}}
        {{--<div class="col-lg-6 col-xl-7"><div class="single__news--info">--}}
        {{--<div class="single__news--info--header">--}}
        {{--<h1>{{$newsIndividual->title}}</h1>--}}
        {{--</div>--}}
        {{--<div class="single__news--info--date">--}}
        {{--<h2><?php echo date('d F Y l' , strtotime($newsIndividual->date)); ?></h2>--}}
        {{--</div>--}}
        {{--<div class="single__news--info--text">--}}
        {{--<div class="text-justify editor-content">{!! getDescription($newsIndividual->description) !!}</div>--}}
        {{--</div>--}}
        {{--</div></div>--}}
        {{--<div class="col-lg-6 col-xl-5">--}}
        {{--<div class="news-slider">--}}
        {{--@foreach($images as $img)--}}
        {{--<div class="single__news--image" style="background-image: url('{{Storage::url($img)}}')"></div>--}}
        {{--@endforeach--}}
        {{--</div>--}}
        {{--</div>--}}
        {{--</div>--}}
        {{--</div>--}}
        {{--</section>--}}
    </main>
@endsection