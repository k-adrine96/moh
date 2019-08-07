<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Moh</title>
    <meta property="fb:app_id" content="{{env('FB_APP_ID')}}">
    @yield('meta')
    <meta property="og:image:size"    content="200" />
    <!--FAVICON-->
    <link rel="icon" href="/img/moh-logo.png">

    <!--FONT-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

    {{--<link rel="stylesheet" href="/css/style.css">--}}
    <link rel="stylesheet" href="/css/app.css">
    @stack('css')
    <!--JQUERY-->
    <script src="/js/libs/jquery-3.3.1.min.js"></script>
    <!--BOOTSTRAP-->
    <script src="/js/libs/bootstrap.min.js"></script>
    <!--SELECT 2-->
    <script src="/js/libs/select2.min.js"></script>
    <script src="/js/select2.js"></script>
    <!--SLICK-->
    <script src="/js/slick-slider.js"></script>
    <script src="/slick/slick/slick.min.js"></script>
    <!--MAIN JS-->
    <script src="/js/menu.js"></script>
    <script src="/js/utils.js"></script>
    <script src="/js/pages/minister-staff.js"></script>
    <script src="/js/index.js"></script>

</head>

<body>
    <div class="all-content">
        @include('layouts.header')
        <section class="empty-div"></section>
        @yield('content')
        @include('layouts.partners')
        <section class="hot-line">
            <div class="hot-line-icon">
                <a href="javascript:;"></a>
                <a href="javascript:;">թեժ գիծ</a>
            </div>
            <div class="hot-line-info">
                <i></i>
                <ul>
                    <li><p>055 123456</p></li>
                    <li><p>055 123456</p></li>
                </ul>
            </div>
        </section>
        @include('layouts.subscribtion')
        @include('layouts.footer')
    </div>
    @include('layouts.sidebar')
    @stack('js')
    @stack('css')
    @if(config('app.env') == 'production')
        <script src="http://localhost:35729/livereload.js"></script>
    @endif
    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0&appId=529530237792265";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
</body>
</html>