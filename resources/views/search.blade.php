@extends('layouts.app')
@section('content')
    <section class="section section-lg bg-white text-left">
        <div class="shell no-gutters">
            <div class="col-lg-10">
                <div class="range range-60 range-xs-left">
                    @forelse($items as $item)
                        <div class="cell-md-7 cell-lg-5 wow jackInTheBox">
                            <article class="post">
                                <div class="post-footer">
                                    <h4><a href="{{ $item['url'] }}">{{ strip_tags($item['search_text']) }}</a></h4>
                                </div>
                            </article>
                        </div>
                    @empty
                        <p class="p--style">@lang('db.F_NO_DATA')</p>
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
        </div>
    </section>
    <div class="clearfix"></div>
@endsection

@push('js')
    <script>
        $('.search-pagination').find('ul').removeClass('pagination').addClass('pagination-custom');
    </script>
@endpush
