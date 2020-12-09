<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <link async rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,400;1,500;1,700&amp;display=swap"/>
    <link async rel="stylesheet" href="{{ asset('css/pro.min.css') }}"/>
    <link async rel="shortcut icon" type="image/png" href="images/fav.png"/>

    <link async rel="stylesheet" href="{{ asset('css/elegant.css') }}"/>
    <link async rel="stylesheet" href="{{ asset('css/custom_bootstrap.css') }}"/>
    <link async rel="stylesheet" href="{{ asset('css/slick.css') }}"/>
    <link async rel="stylesheet" href="{{ asset('css/plyr.min.css') }}"/>
    
    <link async rel="stylesheet" href="{{ asset('css/style.css') }}" >
</head>
<body>
    <div id="app">
        @yield('content')
    </div>
    
    <script sync src="{{ asset('js/app.js') }}"></script>

    <script async rel="script/javascript" src="{{ asset('js/jquery.min.js') }}"></script>
    <script async rel="script/javascript" src="{{ asset('js/slick.min.js') }}"></script>
    <script async rel="script/javascript" src="{{ asset('js/plyr.min.js') }}"></script>
    <script async rel="script/javascript" src="{{ asset('js/masonry.pkgd.min.js') }}"></script>
    <script async rel="script/javascript" src="{{ asset('js/imagesloaded.pkgd.min.js') }}"></script>
    <script async rel="script/javascript" src="{{ asset('js/vimeo.player.min.js') }}"></script>
    <script async rel="script/javascript" src="{{ asset('js/main.js') }}"></script>
</body>
</html>
