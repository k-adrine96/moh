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
                            <select title="" id="legal-acts-type" class="Legal__acts--type" style="width: 100%" name="state">
                                <option value="0">Բոլորը</option>
                                @foreach($actsTypes as $actsType)
                                    <option value="{{$actsType->id}}">{{$actsType->name}}</option>
                                @endforeach
                            </select>
                            <div class="form-group">
                                <label for="date">ամսաթիվ</label>
                                <div class="input-group date" id="datetimepicker4" data-target-input="nearest">
                                    <input placeholder="Ամսաթիվ" type="text" id="date" class="form-control datetimepicker-input"
                                           data-target="#datetimepicker4"/>
                                    <div class="input-group-append" data-target="#datetimepicker4"
                                         data-toggle="datetimepicker">
                                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="legal-acts-name">անվանում</label>
                                <input type="text" class="form-control" id="legal-acts-name" placeholder="Անվանում">
                            </div>
                            <a href="javascript:;" class="margin-auto animated__button animated__button--blue-1">ՈՐՈՆԵԼ</a>
                            <script type="text/javascript">
                              $(function () {
                                $('#datetimepicker4').datetimepicker({
                                  format: 'L'
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
                                        @foreach($legalActs as $legalAct)
                                            <li class="d-flex align-items-center">
                                                <i class="pdf__icon" style="background-image: url('{{Storage::url($legalAct->icon)}}')"></i>
                                                <a href="{{$legalAct->file_upload}}" class="border-btm ml-5">
                                                    <span>{{$legalAct->name}} <i>{{ $legalAct->date }} </i><!--<b>265կբ</b>--></span>
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