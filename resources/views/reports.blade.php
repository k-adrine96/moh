@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Հաշվետվություններ</h1>
            </div>
        </section>
        <section class="legal__acts">
            <div class="legal__acts--container">
                <ul class="legal__acts--list">
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--row d-flex align-items-start">
                                <div class="pdf__text">
                                    <ul>
                                        @foreach($filesInfo as $fileInfo)
{{--                                            @php--}}
{{--                                                $filename = json_decode($fileInfo->file_upload)[0]->download_link;--}}
{{--                                            @endphp--}}
                                            <li class="d-flex align-items-center">
                                                <i class="pdf__icon" style="background-image: url('{{Storage::url($fileInfo->file_icon)}}')"></i>
                                                @if(!is_null($fileInfo->file_url))
                                                    <a class="border-btm ml-5" href="{{$fileInfo->file_url}}">
                                                        <span>{{$fileInfo->file_name}}</span>
                                                    </a>
                                                @else
                                                    <a class="border-btm ml-5" href="{{--{{ Storage::files($filename)}}--}}" download>
                                                        <span>{{$fileInfo->file_name}} <!--<b>265կբ</b>--></span>
                                                    </a>
                                                @endif
                                                {{--<span>{{ $fileInfo->file_date->formatLoca/lized("%A %d %B %Y") }}</span>--}}
                                                <span><?php echo date('d F Y l' , strtotime($fileInfo->date)); ?></span>
                                            </li>
                                        @endforeach
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