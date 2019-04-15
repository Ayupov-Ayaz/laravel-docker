@extends('site.layout', ['title' => $product->name, 'title_bg' => 'catalog_in.jpg', 'page' => 'catalog_in', 'description' => $product->details])

@section('content')
<div class="pt_wrapper _cat_in col-xs-12">
    <div class="row">

        <div class="col-xs-12 flex_w _jc_sb _ai_c btns">
            <a href="{{URL::route('catalog-all')}}" class="go_back">
                <svg class="ypos_ab" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 199.404 199.404"><path d="M135.412 0L35.709 99.702l99.703 99.702 28.283-28.285-71.418-71.417 71.418-71.417z"/></svg>
                Перейти в каталог
            </a>
            <a href="{{ URL::route('product', ['product_id' => $next_product->id]) }}" class="next_prod">
                Следующий товар
                <svg class="ypos_ab" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 220.682 220.682"><path d="M92.695 38.924l71.418 71.417-71.418 71.417 28.284 28.285 99.703-99.702-99.703-99.702z"/><path d="M28.284 210.043l99.702-99.702-99.702-99.702L0 38.924l71.417 71.417L0 181.758z"/></svg>
            </a>
        </div>

        <div class="col-xs-12 col-sm-5 col-md-6">
            <div class="prod_img">
                <img data-src="{{URL::to('/') . $product->image}}" alt="{{$product->name}}" class="lazyload">
            </div>
        </div>
        <div class="col-xs-12 col-sm-7 col-md-6">
            <div class="prod_title">
                {{$product->name}}
                <b>{{$product->details}}</b>
            </div>
            <p>
                {{ $product->description }}
            </p>

            <div class="cat_in_tabs tabs">
                @foreach($product->product_packs as $product_pack)
                    <a data-prod-img="{{ asset('imgs/prods/2.png') }}" class="_active">{{$product_pack->name}}</a>
                @endforeach
            </div>

            <div class="cat_in_tabs tabs _bot">
                @foreach($product->volumes as $volume)
                    <a data-prod-img="{{ asset('imgs/prods/2.png') }}" class="_active">{{$volume->name}}</a>
                @endforeach
            </div>
        </div>

    </div>
</div>

</div>
</header>

<div id="cat_in">
    <div class="container pos_rel">
        <div class="bg _b1"></div>
        <div class="bg _b2"></div>
        <div class="bg _b3"></div>
        <div class="bg _b4"></div>

        <div class="col-xs-12 flex_w _jc_sb features">
            @if($product->fat > 0)
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/cat_in/1.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Массовая доля<br>
                    жира {{ $product->fat }}%
                </div>
            @endif

            @if($product->exp > 0)
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/cat_in/2.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Срок годности<br>
                    {{ $product->exp }} мес.
                </div>
            @endif

            @if(count($product->product_packs) > 0 )
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/cat_in/3.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Упаковка:<br>
                    {{$product->product_packs[0]->name}}
                </div>
            @endif

            @if($product->packs > 0)
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/cat_in/4.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    В транспортной<br>
                    упаковке: {{$product->packs}} штук
                </div>
            @endif

            @if($product->calorie > 0)
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/cat_in/5.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Энергетическая цнст.<br>
                    {{ $product->calorie }}ккал
                </div>
            @endif

            @if($product->temperature_from < $product->temperature_to)
                <div class="item">
                    <div class="img">
                        <img data-src="{{ asset('imgs/icons/cat_in/6.png') }}" alt="" class="lazyload pos_absc">
                    </div>
                    Хранение<br>
                    от @if($product->temperature_from > 0) + @endif {{ $product->temperature_from }}' C до @if($product->temperature_to > 0) + @endif {{ $product->temperature_to }}'C.
                </div>
            @endif

            <div class="item empty"></div>
            <div class="item empty"></div>
            <div class="item empty"></div>
            <div class="item empty"></div>
        </div>

        @if(!empty($product->youtube))
        <div class="col-xs-12 col-sm-6">
            <div class="img_wrapper pos_rel">
                {!! $product->youtube !!}
            </div>
        </div>
        @endif
        
        <div class="col-xs-12 col-sm-6">
            <div class="sub_title">Особенности продукта</div>
            <p>
                {!! $product->special !!}
            </p>
        </div>
        <div class="clear"></div>

        <div class="wrapper">
            <div class="col-xs-12 col-sm-6">
                <div class="sub_title">Основные преимущества</div>
                <ul>
                    @foreach($product->advantages as $advantage)
                        <li>{{ $advantage->name }}</li>
                    @endforeach
                </ul>
            </div>
            <div class="col-xs-12 col-sm-6">
                @if(isset($product->category->image))
                    <img data-src="{{URL::to('/') . $product->category->image}}" alt="{{$product->category->name}}" class="lazyload prods xs-hide">
                @endif
            </div>
        </div>

    </div>
</div>

<div id="cat_list" class="_in_catalog">
    <div class="container">
        <div class="col-xs-12">

            <div class="s_title _small flex_w _jc_sb _ai_c">
                Также рекомендуем
                <a href="{{URL::route('catalog-all')}}" class="btn _acent">Вся продукция</a>
            </div>

            <div class="flex_w _jc_sb">
                @foreach($related_products as $related_product)
                    <a href="{{URL::route('product', ['product_id' => $related_product->id])}}" class="cat_item">
                        <span class="img">
                            <img data-src="{{URL::to('/') . $related_product->thumb}}" alt="{{ $related_product->name }}" class="lazyload">
                        </span>
                        <span class="title">
                            {{ $related_product->name }}
                            <b>{{ $related_product->product_type->name }}</b>
                        </span>
                        @if(count($related_product->volumes) > 0)
                            <span class="weight">{{$related_product->volumes[0]->name}}</span>
                        @endif
                    </a>
                @endforeach

                <div class="cat_item _empty"></div>
                <div class="cat_item _empty"></div>
                <div class="cat_item _empty"></div>
                <div class="cat_item _empty"></div>
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

@endsection
