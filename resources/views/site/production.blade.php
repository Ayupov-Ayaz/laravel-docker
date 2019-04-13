@extends('site.layout', ['title' => 'Производство', 'title_bg' => 'production.jpg', 'page' => 'production', 'description' => 'Производство'])

@section('content')

    <div class="pt_wrapper _production col-xs-12">

        <h1 class="p_title">Производство</h1>
        <p>
            Начиная с 1996 года АО «НЭФИС-БИОПРОДУКТ» обеспечивает рынок высококачественной продукцией в традиционных упаковках дой-пак и пластиковом ведре. В 2012 году наша компания переходит на новый уровень развития, запустив производство продукции в инновационной ПЭТ- упаковке.
        </p>
        <img data-src="{{ asset('imgs/man.png') }}" alt="" class="lazyload man">

        <div class="des">
            «Для нас качество<br>
            и контроль -<br>
            это основа<br>
            производства”

            <div class="name">
                <span>Ленар Хакимов</span>
                Заместитель генерального<br>
                директора по производству
            </div>
        </div>

    </div>

    </div>
    </header>

    <div id="production">
        <div class="wrapper _bg">
            <div class="container">
                <div class="bg _b1"></div>

                <img data-src="{{ asset('imgs/production.png') }}" alt="" class="lazyload bg_img xs-hide">
                <div class="col-xs-12 col-sm-7 col-md-6 col-lg-5">

                    <div class="s_title">Производство</div>
                    <p>
                        <b>
                            Мы являемся крупнейшим предприятием<br>
                            по производству соусов в России и Европе.
                        </b>
                        <br><br>
                        Начиная с 1996 года компания обеспечивает рынок
                        высококачественной продукцией в традиционных упаковках дой -пак и пластиковое ведро. В 2012 году компания переходит на новый уровень развития, запустив производство продукции в инновационной ПЭТ- упаковке.
                    </p>
                </div>

            </div>
        </div>

        <div class="wrapper _eq">
            <div class="container pos_rel">

                <div class="bg _b1"></div>
                <div class="bg _b2"></div>

                <div class="ls col-xs-12 col-sm-6">
                    <div class="img_wrapper"><img data-src="{{ asset('imgs/production/1.jpg') }}" alt="" class="lazyload c_img"></div>
                </div>
                <div class="rs col-xs-12 col-sm-6">
                    <div class="s_title">Оборудование</div>
                    <p>
                        АО «НЭФИС-БИОПРОДУКТ» - это современный производственный комплекс по производству продукции в традиционной и инновационной упаковке, оснащенный новейшим высокотехнологичным оборудованием. Работа предприятия полностью автоматизирована и роботизирована, что позволяет практически исключить  человеческий фактор.
                    </p>
                    <div class="flex_w _jc_sb">
                        <div class="item">
                            <img data-src="{{ asset('imgs/production/2_1.jpg') }}" alt="" class="lazyload pos_absc">
                        </div>
                        <div class="item">
                            <img data-src="{{ asset('imgs/production/bertuzzi.png') }}" alt="" class="lazyload pos_absc">
                        </div>
                        <div class="item">
                            <img data-src="{{ asset('imgs/production/2_3.jpg') }}" alt="" class="lazyload pos_absc">
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="wrapper _slider">
            <div class="container pos_rel">

                <div class="bg _b1"></div>
                <div class="bg _b2"></div>

                <div class="ls col-xs-12 col-sm-6">
                    <div class="s_title">
                        ORGANIC<br>
                    </div>
                    <p>
                        Продукция Mr.Ricco  - это ингредиенты  без пестицидов, гормонов и химических удобрений!
                        В рецептуре Mr.Ricco “ORGANIC” не используются консерванты, крахмал и ароматизаторы.
                        Поставщики ингредиентов для майонеза Mr.Ricco “ORGANIC” соответствуют европейским стандартам  поставщиков для производства продуктов “ORGANIC”.
                    </p>
                </div>
                <div class="rs col-xs-12 col-sm-6">
                    <div class="eco_slider owl-carousel">
                        <div class="item">
                            <img data-src="{{ asset('imgs/production/3_1.jpg') }}" alt="" class="lazyload c_img">
                        </div>
                        <div class="item">
                            <img data-src="{{ asset('imgs/production/3_1.jpg') }}" alt="" class="lazyload c_img">
                        </div>
                        <div class="item">
                            <img data-src="{{ asset('imgs/production/3_1.jpg') }}" alt="" class="lazyload c_img">
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="wrapper _upakovka">
            <div class="container">
                <div class="col-xs-12">
                    <div class="s_title">
                        Упаковка собственного<br>
                        производства
                    </div>

                    <div class="wrap flex_w _jc_sb _ai_fe">
                        <div class="w_item _i1">
                            <div class="bg"></div>
                            <img data-src="{{ asset('imgs/production/4_1.png') }}" alt="" class="lazyload">
                            <p>
                                Полиэтилентерефталат<br>
                                и перформы
                            </p>
                            <div class="icon ypos_ab">
                                <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 185.343 185.343"><path d="M51.707 185.343a10.692 10.692 0 0 1-7.593-3.149 10.724 10.724 0 0 1 0-15.175l74.352-74.347L44.114 18.32c-4.194-4.194-4.194-10.987 0-15.175 4.194-4.194 10.987-4.194 15.18 0l81.934 81.934c4.194 4.194 4.194 10.987 0 15.175l-81.934 81.939a10.678 10.678 0 0 1-7.587 3.15z" fill="#FFF"/></svg>
                            </div>
                        </div>
                        <div class="w_item _i2">
                            <div class="bg"></div>
                            <p>ПЭТ-упаковка</p>
                            <img data-src="{{ asset('imgs/production/4_2.png') }}" alt="" class="lazyload">
                            <div class="icon ypos_ab">
                                <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 185.343 185.343"><path d="M51.707 185.343a10.692 10.692 0 0 1-7.593-3.149 10.724 10.724 0 0 1 0-15.175l74.352-74.347L44.114 18.32c-4.194-4.194-4.194-10.987 0-15.175 4.194-4.194 10.987-4.194 15.18 0l81.934 81.934c4.194 4.194 4.194 10.987 0 15.175l-81.934 81.939a10.678 10.678 0 0 1-7.587 3.15z" fill="#FFF"/></svg>
                            </div>
                        </div>
                        <div class="w_item _i3">
                            <div class="bg"></div>
                            <img data-src="{{ asset('imgs/production/4_3.png') }}" alt="" class="lazyload">
                        </div>
                        <div class="w_item _i4">
                            <div class="bg"></div>

                            <div class="dot _d1"></div>
                            <div class="dot _d2"></div>
                            <div class="dot _d3"></div>

                            <img data-src="{{ asset('imgs/production/4_4.png') }}" alt="" class="lazyload">
                            <p>
                                Safegard, LiftnPell,<br>
                                картиридж с клапаном
                            </p>

                            <img data-src="{{ asset('imgs/production/4_5.png') }}" alt="" class="lazyload">
                            <p>Крышки</p>
                        </div>

                        <div class="clear"></div>
                    </div>

                    <p>
                        Инновационная упаковка и крышка изготавливаются из высококачественного<br>
                        сырья непосредственно на предприятии, что позволяет контролировать<br>
                        соблюдение стандартов качества на всех этапах производства.
                    </p>
                </div>
            </div>
        </div>

        <div class="wrapper _features">
            <div class="container">

                <div class="col-xs-12 col-sm-5">
                    <div class="s_title">Преимущества</div>
                </div>
                <div class="col-xs-12 col-sm-7">
                    <p class="des">
                        АО «НЭФИС-БИОПРОДУКТ» предлагает масложировую продукцию в современной эргономичной ПЭТ-упаковке, уже завоевавшей любовь потребителей на западном и европейском рынках.
                    </p>
                </div>
                <div class="clear"></div>

                <div class="col-xs-12 col-sm-6">
                    <div class="item">
                        <img data-src="{{ asset('imgs/production/5_1.png') }}" alt="" class="lazyload prod">

                        <ul>
                            <li>
                                <img data-src="{{ asset('imgs/icons/production/1.png') }}" alt="" class="lazyload icon">
                                <b>Легкость извлечения<br>
                                    продукта</b>в отличии от<br>
                                стеклянной бутылки.
                            </li>
                            <li>
                                <img data-src="{{ asset('imgs/icons/production/2.png') }}" alt="" class="lazyload icon">
                                <b>Защиткая пленка<br>
                                    lift&Peel</b> (защита под<br>
                                крышкой) - контроль<br>
                                первого вскрытия перед<br>
                                употреблением.
                            </li>
                            <li>
                                <img data-src="{{ asset('imgs/icons/production/3.png') }}" alt="" class="lazyload icon">
                                <b>Силиконовый картридж</b> —<br>
                                позволяет продукту не<br>
                                вытекать даже при<br>
                                открытой крышке. Клапан<br>
                                срабатывает только при<br>
                                надавливании на бутылку.
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6">
                    <div class="item">
                        <img data-src="{{ asset('imgs/production/5_2.png') }}" alt="" class="lazyload prod">

                        <ul>
                            <li>
                                <img data-src="{{ asset('imgs/icons/production/4.png') }}" alt="" class="lazyload icon">
                                <b>Защитное кольцо —</b><br>
                                контроль первого<br>
                                вскрытия перед<br>
                                употреблением продука.
                            </li>
                            <li>
                                <img data-src="{{ asset('imgs/icons/production/5.png') }}" alt="" class="lazyload icon">
                                <b>Рифленая крышка —</b><br>
                                облегчает открытие<br>
                                банки, препятствует<br>
                                скольжению руки.
                            </li>
                            <li>
                                <img data-src="{{ asset('imgs/icons/production/6.png') }}" alt="" class="lazyload icon">
                                <b>Фольгированный<br>
                                    картон —</b> сохранность<br>
                                качества продукта после<br>
                                вскрытия упаковки.
                            </li>
                            <li>
                                <img data-src="{{ asset('imgs/icons/production/2.png') }}" alt="" class="lazyload icon">
                                <b>Защиткая пленка</b><br>
                                SafeGard - сохраняет<br>
                                герметичность продукта.
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>

        <div class="wrapper _bio_control">
            <div class="container pos_rel">

                <div class="bg _b1"></div>
                <div class="bg _b2"></div>

                <div class="ls col-xs-12 col-sm-6 col-md-5">
                    <div class="s_title">БИО- контроль</div>
                    <p>
                        Вся продукция Mr.Ricco проходит систему БИО- контроля. Это запатентованная нами многоуровневая система контроля качества продукции.
                    </p>
                </div>
                <div class="rs col-xs-12 col-sm-6 col-md-7">
                    <img data-src="{{ asset('imgs/production/6_1.png') }}" alt="" class="lazyload">
                </div>

            </div>
        </div>

        <div class="wrapper _slider">
            <div class="container">

                <div class="ls col-xs-12 col-sm-6">
                    <div class="s_title">
                        Инновации<br>
                        и разработки
                    </div>
                    <p>
                        Постоянное развитие, поиск оригинальных вкусов и решений в разработке новинок, высоквалифицированные специалисты, наличие собственной лаборатории - все это помогаем нам производить инновационную продукцию.
                    </p>
                </div>
                <div class="rs col-xs-12 col-sm-6">
                    <div class="eco_slider owl-carousel">
                        <div class="item">
                            <img data-src="{{ asset('imgs/production/3_1.jpg') }}" alt="" class="lazyload c_img">
                        </div>
                        <div class="item">
                            <img data-src="{{ asset('imgs/production/3_1.jpg') }}" alt="" class="lazyload c_img">
                        </div>
                        <div class="item">
                            <img data-src="{{ asset('imgs/production/3_1.jpg') }}" alt="" class="lazyload c_img">
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

@endsection
