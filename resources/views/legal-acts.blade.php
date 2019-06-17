@extends('layouts.app')

@section('content')
	<main>
        <section class="secondary__cover" style="background-image: url('img/legal-acts-cover.png')">
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
                                <option></option>
                                <option value="type1">Type1</option>
                                <option value="type2">type2</option>
                                <option value="type3">Type3</option>
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
                                <div class="pdf__year pdf__year--small">
                                    <span>2019</span>
                                </div>
                                <div class="pdf__text">
                                    <ul>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                                <span>սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                    <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                                <span>սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                    <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                                <span>սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                    <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                                <span>սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                    <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                                <span>սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                    <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                                <span>սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                    <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                                <span>սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                    <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                                <span>սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                    <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
                                        <li class="d-flex align-items-center">
                                            <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                            <a href="javascript:;" class="border-btm ml-5">
                                                <span>սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում
                                                    <!--<b>265կբ</b>--></span>
                                            </a>
                                        </li>
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