@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover aks__minister--cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Կառուցվածքի գծապատկեր</h1>
            </div>
        </section>
        <section class="ministry__structure">
            <div class="container-fluid p-0">
                <div class="row">
                    <div class="col-md-12 col-lg-5">
                        <ul class="ministry__structure--list">
                            <li class="yellow--background">
                                <h1>նախարար</h1>
                            </li>
                            <li class="blue--background">
                                <p>գլխավոր քարտուղար</p>
                            </li>
                            <li class="gray--background">
                                <p>նախարարի տեղակալ</p>
                            </li>
                            <li class="gray--background">
                                <p>նախարարի տեղակալ</p>
                            </li>
                            <li class="gray--background">
                                <p>նախարարի տեղակալ</p>
                            </li>
                            <li class="gray--background">
                                <p>նախարարի տեղակալ</p>
                            </li>

                            <li class="gray--background">
                                <p>նախարարի խորհրդական</p>
                            </li>
                            <li class="gray--background">
                                <p>նախարարի խորհրդական</p>
                            </li>
                            <li class="gray--background">
                                <p>նախարարի խորհրդական</p>
                            </li>

                            <li class="gray--background">
                                <p>նախարարի մամլո քարտուղար</p>
                            </li>

                            <li class="gray--background">
                                <p>նախարարի օգնական</p>
                            </li>

                            <li class="gray--background">
                                <p>նախարարի օգնական</p>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-12 col-lg-7">
                        <ul class="ministry__structure--list ministry__structure--list--right">
                            <li class="gray--background">
                                <p>գլխավոր քարտուղարի տեղակալ</p>
                            </li>
                            <li class="blue--background">
                                <p>բժշկական օգնության քաղաքականության օգնություն</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px;">
                                <p class="color-blue">հիվանդանոցային բժշկական օգնության քաղաքականության բաժին</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px;">
                                <p class="color-blue">հիվանդանոցային բժշկական օգնության քաղաքականության բաժին</p>
                            </li>
                            <li class="blue--background">
                                <p>մոր եվ մանկան առողջության պահպանման վարչություն</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">մայրական եվ վերարտադրուղական առողջության պահպանման բաժին</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">երեխաների առողջության պահպանման բաժին</p>
                            </li>
                            <li class="blue--background">
                                <p>դեղորայքային քաղաքականության եվ բժշկական տեխնոլոգիաների վարչություն</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">դեղորայքային քաղաքականության բաժին</p>
                            </li>
                            <li class="white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue" style="font-size: 1.3rem">բժշկական տեխնոլոգիաների եվ մարդասիրական օգնության համակարգման բաժին</p>
                            </li>
                            <li class="gray--background">
                                <p>անձնակազմի կառավարում</p>
                            </li>
                            <li class="gray--background">
                                <p>իրավաբանական վարչություն</p>
                            </li>
                            <li class=" white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">օրենսդրության կատարելագործման եվ վերլուծության բաժին</p>
                            </li>
                            <li class="color-blue white--background" style="width: 88%;border: 1px solid #0071BC;margin-left: 54px">
                                <p class="color-blue">իրավական ապահովման բաժին</p>
                            </li>

                            <li class="gray--background">
                                <p>հանրային առողջության բաժին</p>
                            </li>
                            <li class="gray--background">
                                <p>արտակարգ իրավիճակների եվ զորահավաքային նախարարության բաժին</p>
                            </li>
                            <li class="gray--background">
                                <p>արտաքին կապերի բաժին</p>
                            </li>
                            <li class="gray--background">
                                <p>հասարակայնության հետ կապերի բաժին</p>
                            </li>
                            <li class="gray--background">
                                <p>ֆինանսատնտեսագիտական բաժին</p>
                            </li>
                            <li class="gray--background">
                                <p>հաշվապահական հաշվառման բաժին</p>
                            </li>
                            <li class="gray--background">
                                <p>ներքին աուդիտի բաժին</p>
                            </li>
                            <li class="gray--background">
                                <p>առաջին բաժին</p>
                            </li>
                            <li class="gray--background">
                                <p>քարտուղարություն</p>
                            </li>
                            <li class="gray--background">
                                <p>լիցենզավորման գործակալություն</p>
                            </li>
                            <li class="gray--background">
                                <p>պետական առողջապահական գործակալություն</p>
                            </li>
                        </ul>
                    </div>
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
    </main>
@endsection