@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{!! __tr('announcement') !!}</h1>
            </div>
        </section>
        <section class="single__announcement">
            <div class="single__announcement--header">
                <h1>{{$announcementIndividual->getTranslatedAttribute('title')}}</h1>
            </div>
            <div class="single__announcement--date">
                <p>{{ $announcementIndividual->date->formatLocalized('%B %d, %Y') }}</p>
            </div>
            <div class="single__announcement--body">
                <p class="text-justify editor-content">{!! getDescription($announcementIndividual->getTranslatedAttribute('description')) !!}</p>
            </div>
        </section>
    </main>
@endsection