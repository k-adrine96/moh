@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Առաքելություն</h1>
            </div>
        </section>
        <section class="only__text text-justify editor-content">
            {!! getDescription($pagesTexts->page_text1) !!}
        </section>
    </main>
@endsection