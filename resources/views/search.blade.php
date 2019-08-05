@extends('layouts.app')
@section('content')
    <section class="section section-lg bg-white text-left">
        <div class="shell no-gutters">
            @if(isset($items))
                <div class="col-lg-10">
                    <div class="range range-60 range-xs-left">
                        @forelse($items as $item)
                            <div class="cell-md-7 cell-lg-5 wow jackInTheBox">
                                <article class="post">
                                    <div class="post-footer">
                                        <h4><a href="{{ $item['url'] }}">{{ strip_tags($item['search_text']) }}</a></h4>
                                        <br>
                                    </div>
                                </article>
                            </div>
                        @empty
                            <p class="p--style"></p>
                        @endforelse
                    </div>
                </div>
                @if($count > $perPage)
                    <div class="col-md-12" style="margin: 30px 0;">
                        <div class="search-pagination">
                            {{ $pagination }}
                        </div>
                    </div>
                @endif
                @else
                    <h1>You should search with more than one character!!!</h1>
            @endif
        </div>
    </section>
    <div class="clearfix"></div>
@endsection

@push('js')
{{--    <script>--}}
{{--        $('.search-pagination').find('ul').removeClass('pagination').addClass('pagination-custom');--}}
{{--    </script>--}}
@endpush
