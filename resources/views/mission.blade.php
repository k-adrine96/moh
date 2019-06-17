@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('img/mission-cover.png')">
            <div class="secondary__cover--content">
                <h1>Առաքելություն</h1>
            </div>
        </section>
        <section class="only__text">
            {!! $pagesTexts->page_text1 !!}
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