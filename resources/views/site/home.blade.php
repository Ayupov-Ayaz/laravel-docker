@extends('site.layout', ['title' => 'Mr Ricco', 'title_bg' => 'index_header.jpg', 'page' => 'index', 'description' => 'Главная'])


@section('content')
    <div id="h_slider" class="col-xs-12 owl-carousel">
        <div class="item">
            <div class="h1">
                Более 60<br>
                наименований<br>
                продуции<br>
                в 12 странах мира
            </div>

            <a href="{{URL::route('catalog-all')}}" class="btn _fill sm-hide">Каталог продукции</a>

            <div class="img_wrapper xs-hide">
                <div class="new">Новинка</div>
                <img data-src="{{ asset('imgs/carusel/ketchup.png') }}" alt="" class="lazyload mp">
                {{--<img data-src="{{ asset('imgs/carusel/ketchup.png') }}" alt="" class="lazyload mp">--}}
            </div>

            <div class="des">
                <b class="f_medium">100% натуральный кетчуп</b><br>
                с мягким вкусом спелых томатов.<br>
                Без загустителей<br>
                и без добавления крахмала.
            </div>

            <a href="{{ URL::route('catalog-all') }}" class="btn _fill sm-show">Каталог продукции</a>
        </div>
        <div class="item">
            <div class="h1">
                Более 60<br>
                наименований<br>
                продуции<br>
                в 12 странах мира
            </div>

            <a href="{{URL::route('catalog-all')}}" class="btn _fill sm-hide">Каталог продукции</a>

            <div class="img_wrapper xs-hide">
                <div class="new">Новинка</div>
                <img data-src="{{ asset('imgs/carusel/oil.png') }}" alt="" class="lazyload mp">
            </div>

            <div class="des">
                <b class="f_medium">Инновационный продукт –</b><br>
                линейка подсолнечных масел «MIX»<br>
                под премиальной маркой  «Mr.Ricco»<br>
                с неповторимым вкусом от<br>
                нерафинированных натуральных масел:<br>
                кукурузного, оливкового, льняного<br>
                и масла авокадо.
            </div>

            <a href="{{ URL::route('catalog-all') }}" class="btn _fill sm-show">Каталог продукции</a>
        </div>
        <div class="item">
            <div class="h1">
                Более 60<br>
                наименований<br>
                продуции<br>
                в 12 странах мира
            </div>

            <a href="{{URL::route('catalog-all')}}" class="btn _fill sm-hide">Каталог продукции</a>

            <div class="img_wrapper xs-hide">
                <div class="new">Новинка</div>
                <img data-src="{{ asset('imgs/carusel/jam.png') }}" alt="" class="lazyload mp">

                {{--<div class="play_btn">--}}
                    {{--<svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 124.512 124.512"><path d="M113.956 57.006l-97.4-56.2c-4-2.3-9 .6-9 5.2v112.5c0 4.6 5 7.5 9 5.2l97.4-56.2c4-2.401 4-8.2 0-10.5z"/></svg>--}}
                {{--</div>--}}
            </div>

            <div class="des">
                <b class="f_medium">Варенье Mr.Ricco</b><br>
                содержит исключительно ягоды с сахаром,<br>
                сваренные в собственном сиропе<br>
                без добавления воды<br>
                и каких-либо дополнительных ингредиентов.
            </div>


            <a href="{{ URL::route('catalog-all') }}" class="btn _fill sm-show">Каталог продукции</a>
        </div>
        <div class="item">
            <div class="h1">
                Более 60<br>
                наименований<br>
                продуции<br>
                в 12 странах мира
            </div>

            <a href="{{URL::route('catalog-all')}}" class="btn _fill sm-hide">Каталог продукции</a>

            <div class="img_wrapper xs-hide">
                <div class="new">Новинка</div>
                <img data-src="{{ asset('imgs/carusel/burger.png') }}" alt="" class="lazyload mp">

                {{--<div class="play_btn">--}}
                {{--<svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 124.512 124.512"><path d="M113.956 57.006l-97.4-56.2c-4-2.3-9 .6-9 5.2v112.5c0 4.6 5 7.5 9 5.2l97.4-56.2c4-2.401 4-8.2 0-10.5z"/></svg>--}}
                {{--</div>--}}
            </div>

            <div class="des">
                <b class="f_medium">Mr.Ricco "Бургер" –</b><br>
                классический гамбургер соус<br>
                сваренные в собственном сиропе<br>
                с приятно сливочно-острым вкусом<br>
                с легким оттенком копчености.
            </div>

            <a href="{{ URL::route('catalog-all') }}" class="btn _fill sm-show">Каталог продукции</a>
        </div>
        <div class="item">
            <div class="h1">
                Более 60<br>
                наименований<br>
                продуции<br>
                в 12 странах мира
            </div>

            <a href="{{URL::route('catalog-all')}}" class="btn _fill sm-hide">Каталог продукции</a>

            <div class="img_wrapper xs-hide">
                <div class="new">Новинка</div>
                <img data-src="{{ asset('imgs/carusel/majonez.png') }}" alt="" class="lazyload mp">

                {{--<div class="play_btn">--}}
                {{--<svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 124.512 124.512"><path d="M113.956 57.006l-97.4-56.2c-4-2.3-9 .6-9 5.2v112.5c0 4.6 5 7.5 9 5.2l97.4-56.2c4-2.401 4-8.2 0-10.5z"/></svg>--}}
                {{--</div>--}}
            </div>

            <div class="des">
                <b class="f_medium">Mr.Ricco «ORGANIC» –</b><br>
                100% натуральный продукт,<br>
                из рецептуры которого<br>
                полностью исключены ароматизаторы,<br>
                искусственные консерванты и красители.
            </div>

            <a href="{{ URL::route('catalog-all') }}" class="btn _fill sm-show">Каталог продукции</a>
        </div>
    </div>

    </div>
    </header>

    @if(count($firms) > 0)
        <div id="partners">
            <div class="container">
                <div class="col-xs-12">

                    <div class="s_title">Среди наших брендов</div>

                    <div class="flex_w _jc_sb">
                        @foreach($firms as $firm)
                            <div class="item">
                                <img data-src="{{URL::to('/') . $firm->image}}" alt="{{ $firm->name }}" class="lazyload">
                            </div>
                        @endforeach

                        <div class="item _empty"></div>
                        <div class="item _empty"></div>
                        <div class="item _empty"></div>
                        <div class="item _empty"></div>
                        <div class="item _empty"></div>
                    </div>

                </div>
            </div>
        </div>
    @endif

    <div id="new_prods">
        <div class="container">

            <div class="col-xs-12 s_title flex_w _ai_c _jc_sb">
                Новинки
                <a href="{{ URL::route('new-products') }}" class="btn _acent">Все новинки</a>
            </div>

            <div id="new_prods_slider" class="col-xs-12 owl-carousel">
                @foreach($new_products as $new_product)
                    <div class="item">
                        <div class="title">
                            <b>{{ $new_product->product_type->name }}</b>
                            {{ $new_product->name }}
                        </div>
                        <p>
                            {{ $new_product->details }}
                        </p>
                        <img data-src="{{URL::to('/') . $new_product->image}}" alt="" class="prod lazyload">

                        <a href="{{URL::route('product', ['product_id' => $new_product->id])}}" class="more">
                            <span class="icon ypos_ab">
                                <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 199.404 199.404"><path d="M63.993 199.404l99.702-99.702L63.993 0 35.709 28.285l71.418 71.417-71.418 71.417z"/></svg>
                            </span>
                            Подробнее
                        </a>
                    </div>
                @endforeach
            </div>

        </div>
    </div>

    <div id="catalog">
        <div class="container">
            <div class="col-xs-12">

                <div class="tab_header flex_w _ai_c _jc_sb">
                    <div>
                        @foreach($categories as $indexKey => $category)
                            <a href="#" data-tab="{{ $indexKey }}" class="item @if($indexKey == 0) _active @endif ">{{ $category->name }}</a>
                        @endforeach
                    </div>

                    <a href="{{URL::route('catalog-all')}}" class="btn _acent xs-hide">Вся продукция</a>
                </div>

                <div class="tab_content">
                    @foreach($categories as $indexKey => $category)
                        <div class="tab_item _tab{{ $indexKey }} _visible owl-carousel">
                            @foreach($category->products()->limit(10)->get() as $product)
                                <div class="item">
                                    <a href="{{URL::route('product', ['product_id' => $product->id])}}">
                                        <div class="img">
                                            <img data-src="{{URL::to('/') . $product->thumb}}" alt="{{ $product->name }}" class="lazyload">
                                        </div>
                                        <div class="title">
                                            {{ $product->name }}
                                            <b>{{ $product->details }}</b>
                                        </div>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    @endforeach
                </div>

                <div class="f_btn xs-show">
                    <a href="{{ URL::route('catalog-all') }}" class="btn _acent">Вся продукция</a>
                </div>

            </div>
        </div>
    </div>

    <div id="news">
        <div class="container">

            <div class="col-xs-12">
                <div class="s_title flex_w _ai_c _jc_sb">
                    Новости

                    <a href="{{ URL::route('news-index') }}" class="btn _acent">Все новости</a>
                </div>
            </div>

            <div class="col-xs-12 flex_w _jc_sb">
                @foreach($news_latest as $item)
                    <a href="{{ URL::route('news-view', ['id' => $item->id]) }}" class="item">
                        <span class="img">
                            <img data-src="{{URL::to('/') . $item->image}}" alt="{{ $item->name }}" class="lazyload c_img">
                        </span>
                        <span class="title">
                            {!! $item->content !!}
                        </span>
                        <span class="flex_w _jc_sb _ai_c">
                            <span class="more">
                                <span class="icon ypos_ab">
                                    <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 199.404 199.404"><path d="M63.993 199.404l99.702-99.702L63.993 0 35.709 28.285l71.418 71.417-71.418 71.417z"/></svg>
                                </span>
                                Подробнее
                            </span>
                            <span class="date">{{ $item->created_at->formatLocalized('%H:%M %d.%m.%Y') }}</span>
                        </span>
                    </a>
                @endforeach
            </div>

        </div>
    </div>

    <div id="about" class="pos_rel">
        <img data-src="{{ asset('imgs/bg/about.jpg') }}" alt="" class="lazyload c_img bg">

        <div class="container pos_rel">
            <div class="col-xs-12 s_title">
                О компании
            </div>

            <div class="col-xs-12 col-sm-5">
                <p>
                    АО «НЭФИС-БИОПРОДУКТ» - это крупнейшее предприятие
                    по производству соусов в России и Европе. В 2004 году
                    компания вывела на рынок бренд Mr.Ricco, запустив
                    производство первого в России майонеза на
                    перепелином яйце. Продукция Mr.Ricco «Organic» -
                    единственная в России сертифицированная на
                    международном уровне как 100  % органический продукт.
                </p>
                <div class="sm-hide">
                    <a href="{{ URL::route('about') }}" class="btn _fill">Подробнее</a>
                    <a href="{{ URL::route('production') }}" class="btn _empty">Производство</a>
                </div>
            </div>

            <div class="col-xs-12 col-sm-7">
                <div class="video pos_rel">
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/5M2egB98blU?autoplay=1" allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </div>

            <div class="col-xs-12 sm-show">
                <a href="{{ URL::route('about') }}" class="btn _fill">Подробнее</a>
                <a href="{{ URL::route('production') }}" class="btn _empty">Производство</a>
            </div>
        </div>

        <div class="footer pos_rel">
            <div class="container">
                <div class="col-xs-12">

                    <div class="s_title">Mr.Ricco - бренд группы компаний</div>
                    <div class="flex_w _jc_sb">
                        <div class="item">
                            <img data-src="{{ asset('imgs/partners/1.png') }}" alt="" class="lazyload">
                        </div>
                        <div class="item">
                            <img data-src="{{ asset('imgs/partners/2.png') }}" alt="" class="lazyload">
                        </div>
                        <div class="item">
                            <img data-src="{{ asset('imgs/partners/3.png') }}" alt="" class="lazyload">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div id="partners">
        <div class="container">
            <div class="col-xs-12">

                <div class="s_title flex_w _jc_sb _ai_c">
                    Среди наших партнёров
                    <a href="{{ URL::route('partners') }}" class="btn _acent">Все партнёры</a>
                </div>

                <div class="flex_w _jc_sb">

                    @foreach($partners as $partner)
                        <div class="item">
                            <img data-src="{{URL::to('/') . $partner->image}}" alt="{{ $partner->name }}" class="lazyload">
                        </div>
                    @endforeach

                    <div class="item _empty"></div>
                    <div class="item _empty"></div>
                    <div class="item _empty"></div>
                    <div class="item _empty"></div>
                    <div class="item _empty"></div>
                </div>

            </div>
        </div>
    </div>

    <div id="development" class="pos_rel">
        <div class="container">

            <div class="col-xs-12 s_title">Производство</div>

            <div class="col-xs-12 col-md-7">
                <div class="item _bg">
                    <img data-src="{{ asset('imgs/about/1.jpg') }}" alt="" class="lazyload c_img bg">
                    <div class="text">
                        <div class="title">БИО-КОНТРОЛЬ</div>
                        <p>
                            Это уникальная запатентованная система контроля качества продукции, выпускаемой под брендом Mr.Ricco.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-5">
                <div class="item _top">
                    <div class="title">Оборудование</div>
                    <p>
                        АО «НЭФИС-БИОПРОДУКТ» - это современный производственный комплекс по производству продукции в традиционной и инновационной упаковке, оснащенный новейшим высокотехнологичным оборудованием. Работа предприятия полностью автоматизирована и роботизирована, что позволяет практически исключить  человеческий фактор.
                    </p>
                    <img data-src="{{ asset('imgs/icons/1.svg') }}" alt="" class="icon lazyload ypos_ab">
                </div>
            </div>
            <div class="clear"></div>

            <div class="col-xs-12 col-md-5">
                <div class="item _bot">
                    <div class="title">Персонал</div>
                    <p>
                        Успех работы нашей компании зависит именно от людей, работающих в ней.
                    </p>
                    <img data-src="{{ asset('imgs/icons/2.svg') }}" alt="" class="icon lazyload ypos_ab">
                </div>
            </div>
            <div class="col-xs-12 col-md-7">
                <div class="item _bg">
                    <img data-src="{{ asset('imgs/about/2.jpg') }}" alt="" class="lazyload c_img bg">
                    <div class="text">
                        <div class="title">ОRGANIC</div>
                        <p>
                            Продукция Mr.Ricco  - это ингредиенты  без пестицидов, гормонов и химических удобрений!
                            В рецептуре Mr.Ricco “ORGANIC” не используются консерванты, крахмал и ароматизаторы.
                            Поставщики ингредиентов для майонеза Mr.Ricco “ORGANIC” соответствуют европейским стандартам  поставщиков для производства продуктов “ORGANIC”.
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-xs-12">
                <a href="{{ URL::route('production') }}" class="btn _acent flr">О производстве</a>
            </div>

        </div>
    </div>
@endsection
