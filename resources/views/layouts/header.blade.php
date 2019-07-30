<header class="header">
    <div class="container-fluid">
        <div class="row no-gutters">
            <div class="col-8 col-lg-3 col-xl-5">
                <div class="header__logo">
                    <ul class="d-flex align-items-center">
                        <li><a href="{{ route('home') }}"></a></li>
                        <li>
                            <a href="{{ route('home') }}">
                                {!! __tr('ramoh') !!}
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-4 col-lg-9 col-xl-7">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 p-0 ">
                            <div class="language text-right">
{{--                                <select class="language--bar" name="state">--}}
{{--                                    <option value="arm">Հայերեն</option>--}}
{{--                                    <option value="rus">Русский</option>--}}
{{--                                    <option value="eng">English</option>--}}
{{--                                </select>--}}
                                <ul>
                                    @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                                        <li>
                                            <a rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                                                {{ $properties['native'] }}
                                            </a>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 p-0 d-flex align-items-center justify-content-end">
                            <ul class="header__navigation d-flex p-1">
                                <li><a href="{{ route('home') }}">{!! __tr('header_home') !!}</a></li>
                                <li><a href="{{ route('pages' , 'contact-us') }}">{!! __tr('header_contact-us') !!}</a></li>
                                <li><a href="{{ route('pages' , 'minister-page') }}">{!! __tr('header_minister') !!}</a></li>
                                <li><a href="{{ route('pages' , 'legal-acts') }}">{!! __tr('header_legal-acts') !!}</a></li>
                            </ul>
                            <div class="burger__menu">
                                <div class="burger__menu--lines burger__menu--line-1"></div>
                                <div class="burger__menu--lines burger__menu--line-2"></div>
                                <div class="burger__menu--lines burger__menu--line-3"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>