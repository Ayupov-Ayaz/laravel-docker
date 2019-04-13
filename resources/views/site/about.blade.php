@extends('site.layout', ['title' => 'О компании', 'title_bg' => 'about_page.jpg', 'page' => 'about', 'description' => 'Иформация о компании'])

@section('content')
<div class="pt_wrapper _about col-xs-12">
    <div class="row">

        <div class="col-xs-12 col-sm-6">

            <h1 class="p_title">О компании</h1>
            <p>
                Высокая технологическая оснащенность производства является основополагающим фактором выпуска высококачественной продукции, которая становится не только популярной среди потребителя, но и доказывает свое качество посредством многочисленных побед на международных выставках, таких как «WorldFood» и «ПродЭкспо».
            </p>

        </div>
        <div class="col-xs-12 col-sm-6 xs-hide">
            <div class="row">
                <div class="col-xs-12 col-md-6 sm-hide">
                    <div class="img_wrapper _iw1"><img data-src="{{ asset('imgs/about/1_1.png') }}" alt="" class="lazyload c_img"></div>
                </div>
                <div class="col-xs-12 col-md-6">
                    <div class="img_wrapper _iw2"><img data-src="{{ asset('imgs/about/1_2.jpg') }}" alt="" class="lazyload c_img"></div>
                    <div class="img_wrapper _iw3"><img data-src="{{ asset('imgs/about/1_3.png') }}" alt="" class="lazyload c_img"></div>
                </div>
            </div>
        </div>

    </div>
</div>

</div>
</header>

<div id="about_in">
    <div class="bg"></div>

    <div class="container pos_rel">
        <div class="icon">
            <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 129 129"><path d="M121.3 34.6c-1.6-1.6-4.2-1.6-5.8 0l-51 51.1-51.1-51.1c-1.6-1.6-4.2-1.6-5.8 0-1.6 1.6-1.6 4.2 0 5.8l53.9 53.9c.8.8 1.8 1.2 2.9 1.2 1 0 2.1-.4 2.9-1.2l53.9-53.9c1.7-1.6 1.7-4.2.1-5.8z"/></svg>
        </div>

        <div class="col-xs-12">
            <div class="s_title">Миссия компании</div>
        </div>

        <div class="col-xs-12 col-sm-6">
            <p>
                Мы заботимся о здоровье наших потребителей <br>
                через создание полезных и вкусных продуктов
            </p>
        </div>
        <div class="col-xs-12 col-sm-6">
            <div class="vid_wrapper pos_rel">
                <iframe width="100%" height="100%" src="https://www.youtube.com/embed/5M2egB98blU?autoplay=1" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>

            <div class="flex_w _jc_sb i_wrapper">
                <div class="item">
                    <div class="title">>400</div>
                    <p>
                        Численность наших<br>
                        работников
                    </p>
                </div>
                <div class="item">
                    <div class="title">187 000</div>
                    <p>
                        Производим тонн готовой<br>
                        продукции в год
                    </p>
                </div>
            </div>
        </div>

        <div class="col-xs-12">
            <div class="s_title _bot">Наши ценности</div>

            <div class="flex_w _jc_sb">
                <div class="f_item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/about/1.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Мы дорожим<br>
                    каждым клиентом
                </div>
                <div class="f_item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/about/2.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Применяем высокие<br>
                    технологии в производстве
                </div>
                <div class="f_item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/about/3.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Предлагаем потребителю<br>
                    только лучшее качество
                </div>
                <div class="f_item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/about/4.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Заботимся о репутации<br>
                    нашей компании
                </div>
                <div class="f_item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/about/5.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Мы благодарны нашим<br>
                    сотрудникам за успех
                </div>
            </div>
        </div>

    </div>
</div>

<div id="about_map">
    <div class="container">

        <div class="col-xs-12 s_title">Реализация продукции в 15 странах мира </div>

        <img data-src="{{ asset('imgs/about_map.png') }}" alt="" class="lazyload bg xs-hide">

        <div class="col-xs-12 col-sm-5 flr">
            <p>
                АО «НЭФИС-БИОПРОДУКТ» сегодня –<br>
                единственный в России сертифицирован на<br>
                международном уровне как органический<br>
                продукт. Компания имеет большую<br>
                дистрибьюторскую сеть в регионах РФ и СНГ.<br>
                Доля отгрузок в регионы РФ составляет 95 %,<br>
                на экспорт в регионы СНГ приходится же 5 %.
            </p>
        </div>

    </div>
</div>

<div id="about_history">
    <div class="container">
        <div class="col-xs-12">

            <div class="s_title">История компании</div>

            <div class="wrapper owl-carousel">
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/1998.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">1998</div>
                    <p>
                        Выпуск первой линейки майонеза «Ласка»
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2004.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2004</div>
                    <p>
                        Разработка и выпуск на рынок бренда «Mr.Ricco»
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2007.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2007</div>
                    <p>
                        Выпущен в эксплуатацию Маслоэкстракционный завод (МЭЗ)- производство полного цикла, от семечки до готового продукта
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2010.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2010</div>
                    <p>
                        Линейка продукции, выпускаемой  под брендом «Mr.Ricco», пополнилась еще одной категорией – «СОУСЫ»
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2011.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2011</div>
                    <p>
                        Введен в эксплуатацию комбинат ОАО «НЭФИС-БИОПРОДУКТ» по производству и фасовке майонезов, кетчупов, соусов в экологичной инновационной  упаковке
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2012_1.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2012</div>
                    <p>
                        Компания переходит на новый уровень развития, запустив производство продукции в инновационной ПЭТ-упаковке.
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2012_2.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2012</div>
                    <p>
                        Разработка и выпуск на рынок бренда  «Миладора» для среднего сегмента потребителей
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2013_1.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2013</div>
                    <p>
                        Выпуск на рынок первой в России линейки соусов в упаковках: ПЭТ-бутылка и ТОП-даун
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2013_2.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2013</div>
                    <p>
                        Запуск майонеза и кетчупа ORGANIC
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2013_3.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2013</div>
                    <p>
                        Выпуск масла Mr.Ricco
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2015.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2015</div>
                    <p>
                        Запуск в производство кетчупа «PROfood», созданного для сегмента HoRecA
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2017.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2017</div>
                    <p>
                        Расширение линейки соусов, майонеза, кетчупа  и масел
                    </p>
                </div>
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/history/2018.png') }}" alt="" class="lazyload c_img">
                    </div>
                    <div class="date">2018</div>
                    <p>
                        Запуск «сладкой» линейки
                    </p>
                </div>
                <div class="item _empty"></div>
                <div class="item _empty"></div>
                <div class="item _empty"></div>
            </div>

            <div class="line flex_w _jc_sb _ai_c pos_rel xs-hide">
                <div class="year" data-slide="0">1998</div>
                <div class="year" data-slide="1">2004</div>
                <div class="year" data-slide="2">2007</div>
                <div class="year" data-slide="3">2010</div>
                <div class="year" data-slide="4">2011</div>
                <div class="year" data-slide="5">2012</div>
                <div class="year" data-slide="6">2013</div>
                <div class="year" data-slide="7">2015</div>
                <div class="year" data-slide="8">2017</div>
                <div class="year _last" data-slide="9">2018</div>

                <div class="cur ypos_ab">
                    <img data-src="{{ asset('imgs/icons/h_switcher.png') }}" alt="" class="lazyload">
                </div>
            </div>

        </div>
    </div>
</div>

<div id="catalog" class="_awards">
    <div class="container">
        <div class="col-xs-12">

            <div class="s_title">Наши награды</div>

            <div class="tab_content">
                <div class="tab_item _visible owl-carousel">
                    @foreach($awards as $award)
                    <div class="item">
                        <div class="img">
                            <img data-src="{{ $award['img'] }}" alt="" class="lazyload">
                        </div>
                        <div class="title">
                            {{ $award['year'] }}
                            <b>{{ $award['title'] }}</b>
                        </div>
                        <p>
                            {{ $award['description'] }}
                        </p>
                    </div>
                    @endforeach
                </div>
            </div>

        </div>
    </div>
</div>
@endsection
