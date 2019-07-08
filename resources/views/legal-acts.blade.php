@extends('layouts.app')

@section('content')
	<main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Իրավական ակտեր</h1>
            </div>
        </section>
        <section class="legal__acts">
            <div class="legal__acts--container">
                <div class="legal__acts--container--form">
                    <form action="">
                        <div class="form--content">
                            <label for="legal-acts-type">տեսակ</label>
                            <select title="" id="legal-acts-type" class="Legal__acts--type" style="width: 100%" name="type_id">
                                <option value="0">Բոլորը</option>
                                @foreach($actsTypes as $actsType)
                                    <option value="{{$actsType->id}}">{{$actsType->name}}</option>
                                @endforeach
                            </select>
                            <div class="form-group">
                                <label for="date">ամսաթիվ</label>
                                <div class="input-group date" id="datetimepicker4" data-target-input="nearest">
                                    <input name="date" placeholder="Ամսաթիվ" type="text" id="date" class="form-control datetimepicker-input"
                                           data-target="#datetimepicker4"/>
                                    <div class="input-group-append" data-target="#datetimepicker4"
                                         data-toggle="datetimepicker">
                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="legal-acts-name">անվանում</label>
                                <input name="name" type="text" class="form-control" id="legal-acts-name" placeholder="Անվանում">
                            </div>
                            <div class="text-center"><button type="submit" class=" custom__button btn">Որոնել</button></div>
                            <script type="text/javascript">
                              $(function () {
                                $('#datetimepicker4').datetimepicker({
                                  format: 'Y-MM-DD'
                                });
                              });
                            </script>
                        </div>
                    </form>
                </div>
                <ul class="legal__acts--list">
                    <li>
                        <div class="pdf__info">
                            <div class="pdf__info--row d-flex align-items-start">
                                <div class="pdf__text">
                                    <ul>
                                        @foreach($parents as $parent)
                                            <li class="d-flex align-items-center">
                                                <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($parent->file_link)}}.png")'></i>
                                                <a class="border-btm ml-5" href="{{$parent->file_link}}" target="_blank">
                                                    <span>{{$parent->name}} <i>{{ $parent->date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($parent->file_link)}}</b></span>
                                                </a>
                                            </li>
                                            @foreach($filesInfo as $fileInfo)
                                                @if( $fileInfo->parent_id ==  $parent->id)
                                                    <li class="d-flex align-items-center child-file">
                                                        <i class="pdf__icon" style='background-image: url("/img/{{getFileIcon($fileInfo->file_link)}}.png")'></i>
                                                        <a class="border-btm ml-5" href="{{$fileInfo->file_link}}" target="_blank">
                                                            <span>{{$fileInfo->name}} <i>{{ $fileInfo->date->formatLocalized('%B %d, %Y') }} </i><b> {{getFileSize($fileInfo->file_link)}}</b></span>
                                                        </a>
                                                    </li>
                                                @endif
                                            @endforeach
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
    </main>
@endsection

@push('js')
    <!--MOMENT-->
    <script src="./js/libs/moment.js"></script>
    <!--DATE PICKER-->
    <script src="./js/libs/tempusdominus-bootstrap-4.min.js"></script>
    <!--FONT AWESOME-->
    <script src="./js/libs/all.min.js"></script>
@endpush