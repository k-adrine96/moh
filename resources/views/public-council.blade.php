@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover aks__minister--cover"
                 style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Նախարարին կից հասարակական խորհուրդ</h1>
            </div>
        </section>
        <section class="public__council">
            <ul class="background__zebra">
                <li class="multicolor">
                    <div class="multicolor-container public__council--row">
                        <a href="javascript:;" class="public__council--row--first--lvl">Կազմը եվ աշխատակարգը</a>
                        <ul class="public__council--hidden--content">
                            <li>
                                <div class="pdf__info">
                                    <div class="pdf__info--row d-flex align-items-start">
                                        <div class="pdf__text">
                                            <ul>
                                                @foreach($PcStaffs as $fileInfo)
                                                    <li class="d-flex align-items-center">
                                                        <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($fileInfo->file_link)}}.png")'></i>
                                                        <a class="border-btm ml-5" href="{{$fileInfo->file_link}}" target="_blank">
                                                            <span>{{$fileInfo->file_name}} <i>{{ $fileInfo->file_date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($fileInfo->file_link)}}</b></span>
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container public__council--row">
                        <a href="javascript:;" class="public__council--row--first--lvl">Նիստեր</a>
                        <ul class="background__zebra public__council--hidden--content">
                            <li >
                                <div class="pdf__info">
                                    @foreach($PcSessions as $fileInfo)
                                        <div class="pdf__info--row d-flex d-flex align-items-center">
                                            <div class="pdf__year pdf__year--large">
                                                <span>{{$fileInfo->year}}</span>
                                            </div>
                                            <div class="pdf__text">
                                                <ul>
                                                    <li class="d-flex align-items-center">
                                                        <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($fileInfo->file_link)}}.png")'></i>
                                                        <a class="border-btm ml-5" href="{{$fileInfo->file_link}}" target="_blank">
                                                            <span>{{$fileInfo->file_name}} <i>{{ $fileInfo->file_date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($fileInfo->file_link)}}</b></span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container public__council--row">
                        <a href="javascript:;" class="public__council--row--first--lvl">Հայտեր</a>
                        <ul class="background__zebra public__council--hidden--content">
                            <li >
                                <div class="pdf__info">
                                    @foreach($PcAppeals as $fileInfo)
                                        <div class="pdf__info--row d-flex d-flex align-items-center">
                                            <div class="pdf__year pdf__year--large">
                                                <span>{{$fileInfo->year}}</span>
                                            </div>
                                            <div class="pdf__text">
                                                <ul>
                                                    <li class="d-flex align-items-center">
                                                        <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($fileInfo->file_link)}}.png")'></i>
                                                        <a class="border-btm ml-5" href="{{$fileInfo->file_link}}" target="_blank">
                                                            <span>{{$fileInfo->file_name}} <i>{{ $fileInfo->file_date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($fileInfo->file_link)}}</b></span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="multicolor">
                    <div class="multicolor-container public__council--row">
                        <a href="javascript:;" class="public__council--row--first--lvl">Արդյունքներ</a>
                        <ul class="background__zebra public__council--hidden--content">
                            <li >
                                <div class="pdf__info">
                                    @foreach($PcResults as $fileInfo)
                                        <div class="pdf__info--row d-flex d-flex align-items-center">
                                            <div class="pdf__year pdf__year--large">
                                                <span>{{$fileInfo->year}}</span>
                                            </div>
                                            <div class="pdf__text">
                                                <ul>
                                                    <li class="d-flex align-items-center">
                                                        <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($fileInfo->file_link)}}.png")'></i>
                                                        <a class="border-btm ml-5" href="{{$fileInfo->file_link}}" target="_blank">
                                                            <span>{{$fileInfo->file_name}} <i>{{ $fileInfo->file_date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($fileInfo->file_link)}}</b></span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </section>
    </main>
@endsection