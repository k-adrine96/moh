@extends('layouts.app')

@section('content')
    <main>
        <section class="secondary__cover" style="background-image: url('{{Storage::url($coverPhoto->page_cover_photo)}}')">
            <div class="secondary__cover--content">
                <h1>Բյուջե</h1>
            </div>
        </section>
        <section class="budget-container">
            <ul class="pdf__container">
                <li>
                    <div class="pdf__info">
                        <div class="pdf__info--row d-flex align-items-start">
                            <div class="pdf__year pdf__year--small">
                                <span>2019</span>
                            </div>
                            <div class="pdf__text">
                                <ul>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>Հայաստանի Հանրապետության 2017 թվականի պետական բյուջեի 07 «ԱՌՈՂՋԱՊԱՀՈՒԹՅՈՒՆ» խմբի բյուջետային հայտ <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>Առողջապահության ոլորտի 2017-2019թթ. միջնաժամկետ
                                                ծախսային ծրագրի հայտ <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>ՀՀ առողջապահության նախարարության կողմից իրականացվող
                                                ծրագրերի գծով բյուջետային հատկացումների 2017 թվականի
                                                տարեկան պլան (առանց համաշխարհային բանկի և այլ գերատեսչությունների)
                                                <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>ՀՀ ԱՆ «ՀՎԿԱԿ» ՊՈԱԿ-ի վճարովի բժշկական աշխատանքների և ծառայությունների մատուցման գնացուցակ
                                                <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="pdf__info">
                        <div class="pdf__info--row d-flex align-items-start">
                            <div class="pdf__year pdf__year--small">
                                <span>2018</span>
                            </div>
                            <div class="pdf__text">
                                <ul>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>Հայաստանի Հանրապետության 2017 թվականի պետական բյուջեի 07 «ԱՌՈՂՋԱՊԱՀՈՒԹՅՈՒՆ» խմբի բյուջետային հայտ <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>Առողջապահության ոլորտի 2017-2019թթ. միջնաժամկետ
                                                ծախսային ծրագրի հայտ <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>ՀՀ առողջապահության նախարարության կողմից իրականացվող
                                                ծրագրերի գծով բյուջետային հատկացումների 2017 թվականի
                                                տարեկան պլան (առանց համաշխարհային բանկի և այլ գերատեսչությունների)
                                                <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="pdf__info">
                        <div class="pdf__info--row d-flex align-items-start">
                            <div class="pdf__year pdf__year--small">
                                <span>2017</span>
                            </div>
                            <div class="pdf__text">
                                <ul>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>Հայաստանի Հանրապետության 2017 թվականի պետական բյուջեի 07 «ԱՌՈՂՋԱՊԱՀՈՒԹՅՈՒՆ» խմբի բյուջետային հայտ <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/pdf-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>Առողջապահության ոլորտի 2017-2019թթ. միջնաժամկետ
                                                ծախսային ծրագրի հայտ <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                    <li class="d-flex align-items-center">
                                        <i class="pdf__icon" style="background-image: url('img/xls-icon.png')"></i>
                                        <a href="javascript:;" class="border-btm ml-5">
                                            <span>ՀՀ առողջապահության նախարարության կողմից իրականացվող
                                                ծրագրերի գծով բյուջետային հատկացումների 2017 թվականի
                                                տարեկան պլան (առանց համաշխարհային բանկի և այլ գերատեսչությունների)
                                                <b>(4061 Կբ)</b></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </section>
    </main>
@endsection