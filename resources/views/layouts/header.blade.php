<header class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-2 col-xl-5 p-0">
                <div class="header__logo">
                    <ul class="d-flex align-items-center">
                        <li><a href="{{ route('home') }}"></a></li>
                        <li>
                            <a href="{{ route('home') }}">
                                ՀԱՅԱՍՏԱՆԻ ՀԱՆՐԱՊԵՏՈւԹՅԱՆ <br>
                                ԱՌՈՂՋԱՊԱՀՈւԹՅԱՆ ՆԱԽԱՐԱՐՈւԹՅՈւՆ
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-10 col-xl-7 p-0">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 p-0 ">
                            <div class="language text-right">
                                <select class="language--bar" name="state">
                                    <option value="arm">Հայերեն</option>
                                    <option value="rus">Русский</option>
                                    <option value="eng">English</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 p-0 d-flex align-items-center justify-content-end">
                            <ul class="header__navigation d-flex p-1">
                                <li><a href="{{ route('home') }}">Գլխավոր</a></li>
                                <li><a href="{{ route('pages' , 'contact-us') }}">Հետադարձ կապ</a></li>
                                <li><a href="{{ route('minister.page') }}">Նախարար</a></li>
                                <li><a href="{{ route('legal.acts') }}">Իրավական ակտեր</a></li>

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