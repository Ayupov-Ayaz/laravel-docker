@extends('site.layout', ['title' => 'Новости', 'title_bg' => 'news.jpg', 'page' => 'news', 'description' => 'Новости'])

@section('content')

    <div class="pt_wrapper col-xs-12">

        <h1 class="p_title">Новости</h1>

    </div>

    </div>
    </header>

    <div id="news" class="_full">
        <div class="container">

            <div class="col-xs-12 flex_w _jc_sb">
                 @foreach($news as $news_item)
                    <a href="{{ URL::route('news-view', ['id' => $news_item->id]) }}" class="item">
                        <span class="img">
                            <img data-src="{{URL::to('/') . $news_item->image}}" alt="" class="lazyload c_img">
                        </span>
                        <span class="date xs-show">{{ $news_item->created_at->formatLocalized('%H:%M %d.%m.%Y') }}</span>
                        <span class="title">
                            {{ $news_item->name }}
                        </span>
                        <span class="flex_w _jc_sb _ai_c">
                            <span class="more">
                                <span class="icon ypos_ab">
                                    <svg class="pos_absc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 199.404 199.404"><path d="M63.993 199.404l99.702-99.702L63.993 0 35.709 28.285l71.418 71.417-71.418 71.417z"/></svg>
                                </span>
                                Подробнее
                            </span>
                            <span class="date xs-hide">{{ $news_item->created_at->formatLocalized('%H:%M %d.%m.%Y') }}</span>
                        </span>
                    </a>
                @endforeach
            </div>

            {{--<div class="col-xs-12 t_center">--}}
                {{--<a href="#" class="load_more">--}}
                    {{--<svg class="ypos_ab" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 199.404 199.404"><path d="M199.404 63.993L171.12 35.709l-71.418 71.418-71.418-71.418L0 63.993l99.702 99.702z"/></svg>--}}
                    {{--Загрузить больше--}}
                {{--</a>--}}
            {{--</div>--}}

        </div>
    </div>
@endsection
