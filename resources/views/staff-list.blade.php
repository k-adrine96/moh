@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
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
    </main>
@endsection