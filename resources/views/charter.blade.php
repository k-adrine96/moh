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
                            {!! $pagesTexts->page_text1 !!}
                        </div>
                    </li>
                    <li>
                        <div class="pdf__info">
                            @if($pagesTexts->page_text2)
                                {!! $pagesTexts->page_text2 !!}
                            @endif
                        </div>
                    </li>
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--row d-flex align-items-start">
                                <div class="pdf__text">
                                    <ul>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            @if($pagesTexts->page_text3)
                                                <a href="javascript:;">
                                                    <span class="ml-5 border-btm">{{strip_tags($pagesTexts->page_text3)}}</span>
                                                </a>
                                            @endif
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
    </main>
@endsection