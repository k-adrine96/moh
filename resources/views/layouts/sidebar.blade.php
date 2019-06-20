<div class="menu">
    <div class="language menu__language text-right">
        <select class="language--bar" name="state">
            <option value="arm">Հայերեն</option>
            <option value="rus">Русский</option>
            <option value="eng">English</option>
        </select>
    </div>
    <form class="menu--form" action="">
        <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="ՈՐՈՆԵԼ" aria-label="Recipient's username"
                   aria-describedby="search">
            <div class="input-group-append">
                <span class="input-group-text" id="search"><img src="/img/search-logo.png" alt=""></span>
            </div>
        </div>
    </form>
    <div class="burger__menu burger__menu--second">
        <div class="burger__menu--lines burger__menu--line-1"></div>
        <div class="burger__menu--lines burger__menu--line-2"></div>
        <div class="burger__menu--lines burger__menu--line-3"></div>
    </div>
    <ul class="menu--content">
        <li>
            <a href="javascript:;" class="first-lvl">նախարարություն</a>
            <ul class="hided--content">
                <li><a href="{{ route('pages' , 'history') }}">Պատմություն</a></li>
                <li><a href="{{ route('pages' , 'mission') }}">Առաքելություն</a></li>
                <li><a href="{{ route('pages' , 'charter') }}">Կանոնադրություն</a></li>
                <li>
                    <a href="javascript:;" class="second-lvl">Կառուցվածք</a>
                    <ul class="second--hidden--content">
                        <li><a href="{{ route('pages' , 'ministry-staff') }}">Նախարարության աշխատակազմ</a></li>
                        <li><a href="{{ route('pages' , 'minister-staff') }}">նախարարի աշխատակազմ</a></li>
                        <li><a href="{{ route('pages' , 'ministry-structure') }}">Կառուցվածքի գծապատկեր</a></li>
                        <li><a href="javascript:;">Լիզենզավորման գործակալություն</a></li>
                        <li><a href="javascript:;">Առողջապահական ծրագրերի իրականացման գրասենյակ</a></li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;" class="second-lvl">Կադրային ապահովում</a>
                    <ul class="second--hidden--content">
                        <li><a href="{{ route('pages' , 'staff-list') }}">Հաստիքացուցակ</a></li>
                        <li><a href="javascript:;">Թափուր հաստիքներ</a></li>
                        <li><a href="javascript:;">Մրցույթների հայտարարություններ, արդյունքներ</a></li>
                        <li><a href="javascript:;">Աշխատանքի ընդունման կարգ</a></li>
                    </ul>
                </li>
                <li><a href="javascript:;">Ենթակայության կառուցներ</a></li>
                <li><a href="{{ route('pages' , 'budget') }}">Բյուջե</a></li>
                <li><a href="javascript:;">Ան խորհրդատուներ</a></li>
                <li><a href="{{ route('pages' , 'public-council') }}">Նախարարին կից հասարակական խորհուրդ</a></li>
            </ul>
        </li>
        <li>
            <a href="javascript:;" class="first-lvl">Տեղեկատու</a>
            <ul class="hided--content">
                <li><a href="{{ route('pages' , 'all-news') }}">Նորություններ</a></li>
                <li><a href="{{ route('pages' , 'announcement') }}">Հայտարարություններ</a></li>
                <li><a href="{{ route('pages' , 'videos') }}">Տեսադարան</a></li>
                <li><a href="{{ route('pages' , 'speeches-interviews') }}">Ելույթներ և հարցազրույցներ</a></li>
                <li><a href="{{ route('pages' , 'reports') }}">Հաշվետվություններ</a></li>
                <li><a href="{{ route('pages' , 'press-release') }}">Մամուլի հաղորդագրություն</a></li>
                <li><a href="javascript:;">Հետազոտություններ</a></li>
                <li><a href="javascript:;">Վիճակագրություն</a></li>
                <li><a href="javascript:;">Տեղեկատու</a></li>
            </ul>
        </li>
        <li>
            <a href="javascript:;" class="first-lvl">ԾՐԱԳՐԵՐ</a>
            <ul class="hided--content">
                <li><a href="javascript:;">Քաղաքականություն</a></li>
                <li><a href="javascript:;">Գերակա</a></li>
                <li><a href="javascript:;">Ազգային</a></li>
                <li><a href="javascript:;">Միջազգային</a></li>
                <li><a href="javascript:;">Սկրինինգ</a></li>
                <li><a href="javascript:;">Միջողառումներ/հակակոռուպցիոն</a></li>

            </ul>
        </li>
        <li>
            <a href="javascript:;" class="first-lvl">ԾԱՌԱՅՈՒԹՅՈՒՆՆԵՐ</a>
            <ul class="hided--content">
                <li><a href="javascript:;">Լիցենզավորում/Փաստաթղթեր/Հայտ</a></li>
                <li><a href="javascript:;">Գովազդի թույլտվություն</a></li>
                <li><a href="javascript:;">Պետական պատվեր/Սոցիալական փաթեթ</a></li>
                <li><a href="javascript:;">Ընդունելություն/Կարգ, ցանկ, արդյունքներ</a></li>
            </ul>
        </li>
        <li>
            <a href="{{ route('pages' , 'faq') }}" class="first-lvl">Հաճախ տրվեղ հարցեր</a>
        </li>
        <li>
            <a href="{{ route('pages' , 'links') }}" class="first-lvl">Հղումներ</a>
            <!--<ul class="hided&#45;&#45;content">-->
            <!--<li><a href="javascript:;">Գործընկերներ</a></li>-->
            <!--<li><a href="javascript:;">Հասարակական կազմակերպություններ</a></li>-->
            <!--<li><a href="javascript:;">Մանկական բարեգործական կազմակերպություններ</a></li>-->
            <!--<li><a href="javascript:;">Հղումներ</a></li>-->
            <!--</ul>-->
        </li>
        <li>
            <a href="javascript:;" class="first-lvl">Քո իրավունքը</a>
        </li>
    </ul>
    <div class="menu__social">
        <ul class="menu__social--icons d-flex align-items-center justify-content-center">
            <li class="rounded-circle">
                <a href="javascript:;">
                    <i class="facebook--icon"></i>
                </a>
            </li>
            <li class="rounded-circle">
                <a href="javascript:;">
                    <i class="youtube--icon"></i>
                </a>
            </li>
            <li class="rounded-circle">
                <a href="javascript:;">
                    <i class="linkedin--icon"></i>
                </a>
            </li>
            <li class="rounded-circle">
                <a href="javascript:;">
                    <i class="google--icon"></i>
                </a>
            </li>
            <li class="rounded-circle">
                <a href="javascript:;">
                    <i class="twitter--icon"></i>
                </a>
            </li>
            <li class="rounded-circle">
                <a href="javascript:;">
                    <i class="instagram--icon"></i>
                </a>
            </li>
        </ul>
    </div>
</div>