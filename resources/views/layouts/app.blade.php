<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Moh</title>
    <!--FAVICON-->
    <link rel="icon" href="img/moh-logo.png">
    <!--BOOTSTRAP-->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <!--RESET-->
    <link rel="stylesheet" href="./css/reset.css">
    <!--SELECT 2-->
    <link rel="stylesheet" href="./css/select2.min.css">
    <!--SLICK-->
    <link rel="stylesheet" type="text/css" href="./slick/slick/slick-theme.css"/>
    <link rel="stylesheet" type="text/css" href="./slick/slick/slick.css"/>
    <!--ALL STYLE-->

    <!--FONT-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

    <link rel="stylesheet" href="./css/style.css">

    <!--JQUERY-->
    <script src="./js/libs/jquery-3.3.1.min.js"></script>
    <!--BOOTSTRAP-->
    <script src="./js/libs/bootstrap.min.js"></script>
    <!--SELECT 2-->
    <script src="./js/libs/select2.min.js"></script>
    <script src="./js/select2.js"></script>
    <!--SLICK-->
    <script src="./js/slick-slider.js"></script>
    <script src="./slick/slick/slick.min.js"></script>
    <!--MAIN JS-->
    <script src="./js/menu.js"></script>
    <script src="./js/utils.js"></script>
    <script src="js/pages/minister-staff.js"></script>
    <script src="./js/index.js"></script>

</head>

<body>
    <div class="all-content">
        @include('layouts.header')
        <section class="empty-div"></section>
        @yield('content')
        @include('layouts.footer')
    </div>
    @include('layouts.sidebar')
</body>
</html>