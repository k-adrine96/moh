@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Կանոնադրություն</h1>
            </div>
        </section>
        <section class="charter-container">
            <div class="charter-content">
                <ul class="pdf__container">
                    <li class="text-center">
                        <div class="pdf__info text-justify">
                            {!! $pagesTexts->page_text1 !!}
                        </div>
                    </li>
                    <li>
                        <div class="pdf__info text-justify">
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
                                        <li class="d-flex align-items-center text-justify">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            @if($pagesTexts->page_text3)
                                                {!! $pagesTexts->page_text3 !!}
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
    </main>
@endsection