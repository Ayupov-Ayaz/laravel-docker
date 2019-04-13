@extends('site.layout', ['title' => 'Новинки', 'title_bg' => 'new_product.jpg', 'page' => 'new_product', 'description' => 'Новинки'])

@section('content')

    <div class="pt_wrapper col-xs-12">

        <h1 class="p_title">Новинки</h1>

    </div>

    </div>
    </header>

    <div id="new_product">
        <div class="container">
            <div class="col-xs-12 flex_w _jc_sb">
                @foreach($new_products as $indexKey => $new_product)
                    @if($indexKey % 2 == 0)
                        <div class="wrap item">
                            <div class="title">
                                <b>{{ $new_product->category->name }}</b>
                                {{ $new_product->name }}
                            </div>
                            <p>
                                {{ $new_product->details }}
                            </p>
                            <img data-src="{{URL::to('/') . $new_product->image}}" alt="{{$new_product->name}}" class="prod lazyload">

                            <a href="{{ URL::route('product', ['product_id' => $new_product->id]) }}" class="more">
                                <span class="icon ypos_ab">
                                    <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 199.404 199.404"><path d="M63.993 199.404l99.702-99.702L63.993 0 35.709 28.285l71.418 71.417-71.418 71.417z"/></svg>
                                </span>
                                Подробнее
                            </a>
                        </div>
                    @else
                        <a href="{{ URL::route('product', ['product_id' => $new_product->id]) }}" class="wrap prod_item">
                            <span class="img">
                                <img data-src="{{URL::to('/') . $new_product->thumb}}" alt="{{$new_product->name}}" class="lazyload">
                            </span>
                            <span class="title">
                                {{ $new_product->category->name }}
                                <span>{{ $new_product->name }}</span>
                            </span>
                        </a>
                    @endif
                @endforeach
            </div>

        </div>
    </div>
@endsection
