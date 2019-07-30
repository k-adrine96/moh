@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>{!! __tr('side_faq') !!}</h1>
            </div>
        </section>
        <section class="faq">
            <div class="faq__header">
                <h1>հաճախ տրվող հարցեր</h1>
            </div>
            <ul class="background__zebra">
                @foreach($faqCategories as $faqCategory)
                    <li class="multicolor">
                    <div class="multicolor-container faq__row">
                        <a href="javascript:;" class="faq__row--first--lvl">{{ $faqCategory->getTranslatedAttribute('name') }}</a>
                        <ul class="faq__row--hided--content">
                            @foreach($faqs as $faq)
                                @if($faq->category_id == $faqCategory->id)
                                    <li>
                                        <a href="javascript:;" class="faq__second-lvl">{{ $faq->getTranslatedAttribute('question') }}</a>
                                        <ul class="faq__second--hidden--content">
                                            <li>{{ $faq->getTranslatedAttribute('answer') }}</li>
                                        </ul>
                                    </li>
                                @endif
                            @endforeach
                        </ul>
                    </div>
                </li>
                @endforeach
            </ul>
        </section>
    </main>
@endsection