@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Նորություններ</h1>
            </div>
        </section>
        <section class="faq">
            <div class="faq__header">
                <h1>հաճախ տրվող հարցեր</h1>
            </div>
            <ul class="background__zebra">
                <li class="multicolor">
                    <div class="multicolor-container faq__row">
                        <a href="javascript:;" class="faq__row--first--lvl">դեղերի դուրս գրման նոր կարգի վերաբերյալ
                            բարձրացված
                            հարցեր </a>
                        <ul class="faq__row--hided--content">
                            <li>
                                <a href="javascript:;" class="faq__second-lvl">Կարելի է՞ դեղատոմս դուրս գրել առանց
                                    դեղատոմսի դուրս գրվող դեղերի համար կամ այն խմբի դեղերի համար, որոնք ժամանակացույցով
                                    ներկայումս ներառված չեն պարտադիր դեղատոմսով դուրս գրվող դեղերի ցանկում:</a>
                                <ul class="faq__second--hidden--content">
                                    <li>2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն
                                        հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային
                                        դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ,
                                        պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը,
                                        հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;" class="faq__second-lvl">Կարելի է՞ դեղատոմս դուրս գրել Հայաստանում
                                    չգրանցված դեղերի համար:</a>
                                <ul class="faq__second--hidden--content">
                                    <li>2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն
                                        հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային
                                        դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ,
                                        պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը,
                                        հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;" class="faq__second-lvl">Ինչպե՞ս պետք է բժիշկը պարզի, թե առևտրային
                                    (բրենդ) անվամբ դեղն ինչ «համընդհանուր անուն» ունի:</a>
                                <ul class="faq__second--hidden--content">
                                    <li>2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն
                                        հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային
                                        դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ,
                                        պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը,
                                        հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:;" class="faq__second-lvl">Ո՞ր դեպքերում կարելի է դեղատոմսը գրել
                                    «առևտրային» (բրենդ) անվամբ:</a>
                                <ul class="faq__second--hidden--content">
                                    <li>2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն
                                        հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային
                                        դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ,
                                        պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը,
                                        հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container faq__row">
                        <a href="javascript:;" class="faq__row--first--lvl">Էլեկտրոնային առողջապահության համակարգի
                            գաղտնիության ապահովման մասին</a>
                        <ul class="faq__row--hided--content">
                            <li>
                                <a href="javascript:;" class="faq__second-lvl">Էլեկտրոնային առողջապահության համակարգի
                                    գաղտնիության ապահովման մասին</a>
                                <ul class="faq__second--hidden--content">
                                    <li>2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն
                                        հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային
                                        դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ,
                                        պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը,
                                        հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container faq__row">
                        <a href="javascript:;" class="faq__row--first--lvl">Բժշկական օգնություն եվ սպասարկում</a>
                        <ul class="faq__row--hided--content">
                            <li>
                                <a href="javascript:;" class="faq__second-lvl">Ի՞նչ ժամանակացույցով է ներդրվելու
                                    դեղատոմսի
                                    պարտադիր պահանջը դեղերի տարբեր խմբերի համար։</a>
                                <ul class="faq__second--hidden--content">
                                    <li>2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն
                                        հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային
                                        դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ,
                                        պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը,
                                        հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container faq__row">
                        <a href="javascript:;" class="faq__row--first--lvl">Պոլիոմիելիտի լրացուցիչ պատվաստումներ</a>
                        <ul class="faq__row--hided--content">
                            <li>
                                <a href="javascript:;" class="faq__second-lvl">Ի՞նչ ժամանակացույցով է ներդրվելու
                                    դեղատոմսի
                                    պարտադիր պահանջը դեղերի տարբեր խմբերի համար։</a>
                                <ul class="faq__second--hidden--content">
                                    <li>2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն
                                        հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային
                                        դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ,
                                        պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը,
                                        հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container faq__row">
                        <a href="javascript:;" class="faq__row--first--lvl">Կարմրուկ</a>
                        <ul class="faq__row--hided--content">
                            <li>
                                <a href="javascript:;" class="faq__second-lvl">Ի՞նչ ժամանակացույցով է ներդրվելու
                                    դեղատոմսի
                                    պարտադիր պահանջը դեղերի տարբեր խմբերի համար։</a>
                                <ul class="faq__second--hidden--content">
                                    <li>2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն
                                        հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային
                                        դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ,
                                        պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը,
                                        հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:
                                    </li>
                                </ul>
                            </li>
                        </ul>
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
    </main>
@endsection