<?php
$pImage = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://'. $_SERVER['HTTP_HOST'] .''. (isset($pImage) ? $pImage : '/imgs/logo.png');
$pUrl = (isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://'. $_SERVER['HTTP_HOST'].''.$_SERVER['REQUEST_URI'];

ob_start();
?>

    <!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="ru" data-left-title="Mr.Ricco скучает по Вам" data-left-favicon="{{ asset('imgs/favicon_left.ico') }}" data-favicon="{{ asset('imgs/favicon.ico') }}"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="ru" data-left-title="Mr.Ricco скучает по Вам" data-left-favicon="{{ asset('imgs/favicon_left.ico') }}" data-favicon="{{ asset('imgs/favicon.ico') }}"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="ru" data-left-title="Mr.Ricco скучает по Вам" data-left-favicon="{{ asset('imgs/favicon_left.ico') }}" data-favicon="{{ asset('imgs/favicon.ico') }}"><![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="ru" data-left-title="Mr.Ricco скучает по Вам" data-left-favicon="{{ asset('imgs/favicon_left.ico') }}" data-favicon="{{ asset('imgs/favicon.ico') }}">
<!--<![endif]-->
<head>
    <title>{{ $title }}</title>
    <meta name="description" content="{{ $description }}">
    <meta name="keywords" content="">
    <meta name="robots" content="index, follow">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ $title }}" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="<?=$pUrl;?>" />
    <meta property="og:image" content="<?=$pImage;?>" />
    <meta property="og:description" content="{{ $description }}" />
    <meta property="og:site_name" content="" />
    <meta property="og:locale" content="{{ strtoupper(App::getLocale()) }}" />

    <!-- Twitter -->
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:title" content="{{ $title }}"/>
    <meta name="twitter:description" content="{{ $description }}"/>
    <meta name="twitter:image:src" content="<?=$pImage;?>"/>
    <meta name="twitter:site" content="<?=$pUrl;?>"/>

    <!-- Google Plus -->
    <meta itemprop="name" content="" />
    <meta itemprop="description" content="{{ $description }}"/>
    <meta itemprop="image" content="<?=$pImage;?>"/>

    <!-- Подключение шрифтов -->
    <link rel="preload" href="{{ asset('fonts/PFSquareSansPro-Bold.woff') }}" as="font" type="font/woff" crossorigin>
    <link rel="preload" href="{{ asset('fonts/PFSquareSansPro-Medium.woff') }}" as="font" type="font/woff" crossorigin>
    <link rel="preload" href="{{ asset('fonts/PFSquareSansPro-Regular.woff') }}" as="font" type="font/woff" crossorigin>
    <link rel="preload" href="{{ asset('fonts/PFSquareSansPro-Light.woff') }}" as="font" type="font/woff" crossorigin>
    <link rel="preload" href="{{ asset('fonts/PFSquareSansPro-Thin.woff') }}" as="font" type="font/woff" crossorigin>

    <link rel="stylesheet" href="{{ asset('styles/main.css') }}?v=1.0.1">

    <meta name="Content-Type" content="text/html;charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="imagetoolbar" content="no">
    <meta http-equiv="msthemecompatible" content="no">
    <meta http-equiv="cleartype" content="on">
    <meta name="HandheldFriendly" content="True">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no"/>
    <meta name="format-detection" content="address=no"/>
    <meta name="viewport" content="width=device-width,height=device-height, initial-scale=1.0, user-scalable=no,maximum-scale=1.0"/>

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="shortcut icon" href="{{ asset('imgs/favicon.ico') }}">
</head>
<body>

<div class="hidden_menu">
    <div class="container">

        <div class="wrapper flex_w">
            <div id="close_hmenu">
                <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 47.971 47.971"><path d="M28.228 23.986L47.092 5.122a2.998 2.998 0 0 0 0-4.242 2.998 2.998 0 0 0-4.242 0L23.986 19.744 5.121.88a2.998 2.998 0 0 0-4.242 0 2.998 2.998 0 0 0 0 4.242l18.865 18.864L.879 42.85a2.998 2.998 0 1 0 4.242 4.241l18.865-18.864L42.85 47.091c.586.586 1.354.879 2.121.879s1.535-.293 2.121-.879a2.998 2.998 0 0 0 0-4.242L28.228 23.986z"/></svg>
            </div>

            <div class="wrap">
                <div class="title">Продукция</div>
                <nav>
                    @foreach($categories as $category)
                    <a href="{{ URL::route('catalog', ['category_id' => $category->id]) }}">{{ $category->name }}</a>
                    @endforeach
                </nav>
            </div>
            <div class="wrap">
                <div class="title">Компания</div>
                <nav>
                    <a href="{{ URL::route('about') }}">О нас</a>
                    <a href="{{ URL::route('production') }}">Производство</a>
                    <a href="{{ URL::route('partners') }}">Партнёры</a>
                    <a href="{{ URL::route('contacts') }}">Контакты</a>
                </nav>
            </div>
            <div class="wrap">
                <div class="title">Полезное</div>
                <nav>
                    <a href="#">Задать вопрос</a>
                    <a href="{{ URL::route('new-products') }}">Новинки</a>
                    <a href="{{ URL::route('news-index') }}">Новости</a>
                    <a href="{{ URL::route('jobs') }}">Карьера</a>
                </nav>
            </div>
            <div class="wrap">
                <div class="title">Новинка</div>
                <div id="h_menu_slider" class="owl-carousel">
                    @foreach($new_products as $new_product)
                        <a href="{{ URL::route('product', ['product_id' => $new_product->id]) }}" class="item">
                            <img data-src="{{URL::to('/') . $new_product->thumb}}" alt="{{$new_product->name}}" class="lazyload">
                        </a>
                    @endforeach
                </div>
            </div>
        </div>

    </div>
</div>

<header class="pos_rel <?=($_SERVER['REQUEST_URI'] === '/') ? '_index' : '_page_in';?>">
    <?=($_SERVER['REQUEST_URI'] === '/') ? '' : '<div class="gradient"></div>';?>
    <img src="{{ asset('imgs/bg/' . $title_bg) }}" alt="background" class="c_img bg @if(in_array($page, array('catalog_in', 'news_in', 'vacancy_in'))) _blur @endif">

    <div class="sm-show mob_top">
        <div class="container">
            <div class="col-xs-12 flex_w _ai_c _jc_sb">

                <div>
                    <a href="tel:88001000889" class="phone f_bold">8 800 1000 889</a>
                    <div class="lang pos_rel">
                        <div class="cur">{{ strtoupper(App::getLocale()) }}</div>
                        <ul class="list">
                            @foreach(config('translatable.locales') as $locale)
                                <a href="#">{{ strtoupper($locale) }}</a>
                            @endforeach
                        </ul>
                    </div>
                </div>

                <div class="open_hmenu pos_rel">
                    <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M491.318 235.318H20.682C9.26 235.318 0 244.577 0 256s9.26 20.682 20.682 20.682h470.636c11.423 0 20.682-9.259 20.682-20.682 0-11.422-9.259-20.682-20.682-20.682zM491.318 78.439H20.682C9.26 78.439 0 87.699 0 99.121c0 11.422 9.26 20.682 20.682 20.682h470.636c11.423 0 20.682-9.26 20.682-20.682 0-11.422-9.259-20.682-20.682-20.682zM491.318 392.197H20.682C9.26 392.197 0 401.456 0 412.879s9.26 20.682 20.682 20.682h470.636c11.423 0 20.682-9.259 20.682-20.682s-9.259-20.682-20.682-20.682z"/></svg>
                </div>

            </div>
        </div>
    </div>

    <div class="container pos_rel">

        <div class="col-xs-12 flex_w _jc_sb _ai_c">
            <a href="/" class="logo">
                <img src="{{ asset('imgs/logo.png') }}" alt="">
            </a>

            <div class="menu sm-hide">
                    <span href="#" class="pos_rel prods _active">
                        <span class="text">
                            <svg class="ypos_ab" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 459 459"><path d="M0 382.5h459v-51H0v51zM0 255h459v-51H0v51zM0 76.5v51h459v-51H0z"/></svg>
                            Продукция
                        </span>

                        <span class="list">
                            @foreach($categories as $category)
                                <a href="{{URL::route('catalog', ['category_id' => $category->id])}}" class="item">{{$category->name}}</a>
                            @endforeach
                        </span>
                    </span>
                <a href="{{URL::route('about')}}">О нас</a>
                <a href="{{ URL::route('production') }}">Производство</a>
                <a href="{{ URL::route('new-products') }}">Новинки</a>

                <a href="tel:88001000889" class="phone f_bold">8 800 1000 889</a>

                <div class="lang pos_rel">
                    <div class="cur">{{ strtoupper(App::getLocale()) }}</div>
                    <ul class="list">

                        @foreach(config('translatable.locales') as $locale)
                        <a href="#">{{ strtoupper($locale) }}</a>
                        @endforeach
                    </ul>
                </div>
            </div>

            <div class="flex_w _ai_c">
                <a href="#" class="btn _empty open_popup" data-popup-id="ask_question">Задать вопрос</a>
                <div class="open_hmenu pos_rel sm-hide">
                    <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M491.318 235.318H20.682C9.26 235.318 0 244.577 0 256s9.26 20.682 20.682 20.682h470.636c11.423 0 20.682-9.259 20.682-20.682 0-11.422-9.259-20.682-20.682-20.682zM491.318 78.439H20.682C9.26 78.439 0 87.699 0 99.121c0 11.422 9.26 20.682 20.682 20.682h470.636c11.423 0 20.682-9.26 20.682-20.682 0-11.422-9.259-20.682-20.682-20.682zM491.318 392.197H20.682C9.26 392.197 0 401.456 0 412.879s9.26 20.682 20.682 20.682h470.636c11.423 0 20.682-9.259 20.682-20.682s-9.259-20.682-20.682-20.682z"/></svg>
                </div>
            </div>
        </div>
