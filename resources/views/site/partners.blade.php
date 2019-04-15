@extends('site.layout', ['title' => 'Партнеры', 'title_bg' => 'partners.jpg', 'page' => 'partners', 'description' => 'Партнеры'])

@section('content')

    <div class="pt_wrapper col-xs-12">

        <h1 class="p_title">Партнеры</h1>

    </div>

    </div>
    </header>

    <div id="partner_list">
        <div class="container">
            <div class="col-xs-12 flex_w _jc_sb">
                @foreach($partners as $partner)
                <div class="item">
                    <div class="img">
                        <img data-src="{{URL::to('/') . $partner->image}}" alt="{{ $partner->name }}" class="lazyload pos_absc">
                    </div>
                    <div class="title">{{ $partner->name }}</div>
                    <p>
                        {{ $partner->description }}
                    </p>
                    <a href="http://{{ $partner->www }}" rel="nofollow" target="_blank" class="site">{{ $partner->www }}</a>
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

@endsection
