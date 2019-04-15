@extends('site.layout', ['title' => $category->name, 'title_bg' => 'about_page.jpg', 'page' => 'catalog', 'description' => $category->name])

@section('content')

    <div class="pt_wrapper _catalog col-xs-12">

        <div class="prod_swticher">
            @foreach($categories as $cat)
                <a href="{{URL::route('catalog', ['category_id' => $cat->id])}}" @if($cat->id == $category->id)class="_active"@endif >{{$cat->name}}</a>
            @endforeach
        </div>
        <h1 class="p_title">{{$category->name}}</h1>
        <div class="tab">
            <a href="{{URL::route('catalog', ['category_id' => $category->id])}}" @if(is_null($firm))class="_active"@endif >Все</a>

            @foreach($firms as $f)
                <a href="{{URL::route('catalog-firm', ['category_id' => $category->id, 'firm_id' => $f->id])}}" @if(isset($firm) && $firm->id == $f->id)class="_active"@endif >{{$f->name}}</a>
            @endforeach
        </div>

        @if(isset($category->image))
        <img data-src="{{URL::to('/') . $category->image}}" alt="{{$category->name}}" class="lazyload prod_img xs-hide">
        @endif
    </div>

    </div>
    </header>

    <div id="cat_list">
        <div class="container">
            <div class="col-xs-12">

                <div class="header_switch">
                    <div class="wrapper">
                        @foreach($types as $type)
                            <a
                                @if(isset($firm))
                                    href="{{URL::route('catalog-firm-type', ['category_id' => $category->id, 'firm_id' => $firm->id, 'type_id' => $type->id])}}"
                                @else
                                    href="{{URL::route('catalog-type', ['category_id' => $category->id, 'type_id' => $type->id])}}"
                                @endif

                                @if(isset($product_type) && $type->id == $product_type->id)
                                    class="_active"
                                @endif
                            >
                                {{$type->name}}
                            </a>
                        @endforeach
                    </div>
                </div>

                <div class="flex_w _jc_sb">
                    @foreach($products as $product)
                    <a href="{{ URL::route('product', ['product_id' => $product->id]) }}" class="cat_item">
                        <span class="img">
                            <img data-src="{{URL::to('/') . $product->thumb}}" alt="{{$product->name}}" class="lazyload">
                        </span>
                        <span class="title">
                            {{$product->name}}
                            <b>{{$product->product_type->name}}</b>
                        </span>
                        @if(count($product->volumes) > 0)
                            <span class="weight">{{$product->volumes[0]->name}}</span>
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
                        <span class="date xs-show">{{ $item->created_at->formatLocalized('%H:%M %d.%m.%Y') }}</span>
                        <span class="flex_w _jc_sb _ai_c">
                            <span class="more">
                                <span class="icon ypos_ab">
                                    <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 199.404 199.404"><path d="M63.993 199.404l99.702-99.702L63.993 0 35.709 28.285l71.418 71.417-71.418 71.417z"/></svg>
                                </span>
                                Подробнее
                            </span>
                            <span class="date xs-hide">{{ $item->created_at->formatLocalized('%H:%M %d.%m.%Y') }}</span>
                        </span>
                    </a>
                @endforeach
            </div>

        </div>
    </div>
@endsection
