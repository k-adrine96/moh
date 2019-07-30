@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{{ __tr('side_history') }}</h1>
            </div>
        </section>
        <section class="history-container">
            <ul class="pdf__container">
                @foreach($minHistoryCats as $minHistoryCat)
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--row d-flex align-items-start">
                                <div class="pdf__year pdf__year--small">
                                    <span>{{ $minHistoryCat->getTranslatedAttribute('name') }}</span>
                                </div>
                                <div class="pdf__text">
                                    <div class="text-container text-justify editor-content">
                                        {!! getDescription($minHistoryCat->getTranslatedAttribute('description')) !!}
                                    </div>
                                    <ul>
                                        @foreach($minHistoryItems as $minHistoryItem)
                                            @if($minHistoryCat->id == $minHistoryItem->category_id)
                                                <li>
                                                    <div class="pdf__info">
                                                        <div class="pdf__info--row d-flex align-items-start">
                                                            <div class="pdf__year pdf__year--large">
                                                                <span class="color-yellow">{{$minHistoryItem->year}}</span>
                                                            </div>
                                                            <div class="pdf__text">
                                                                <ul>
                                                                    <li>
                                                                        <p class="yellow-border border-btm">{{$minHistoryItem->getTranslatedAttribute('name')}}</p>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            @endif
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                @endforeach
            </ul>
        </section>
    </main>
@endsection