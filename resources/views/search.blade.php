@extends('layouts.app')
@section('content')
    <section class="search-content">
        @if(isset($items))
            <ul>
                @forelse($items as $item)
                    <li class="bordered"><a href="{{ $item['url'] }}">{{ strip_tags($item['search_text']) }}</a></li>
                @empty
                    <li class="bordered"><h1>{!! __tr('search_no_result') !!}</h1></li>
                @endforelse
            </ul>
            @if($count > $perPage)
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12" style="margin: 30px 0;">
                            <div class="search-pagination">
                                {{ $pagination }}
                            </div>
                        </div>
                    </div>
                </div>
            @endif
        @else
            <h1>{!! __tr('search_validation_message') !!}</h1>
        @endif
    </section>
    <div class="clearfix"></div>
@endsection

@push('js')
    {{--    <script>--}}
    {{--        $('.search-pagination').find('ul').removeClass('pagination').addClass('pagination-custom');--}}
    {{--    </script>--}}
@endpush
