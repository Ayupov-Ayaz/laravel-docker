<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Firm;
use App\Models\News;
use App\Models\Partner;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $news_latest = News::orderBy('id', 'desc')
            ->limit(2)->get();
        $partners = Partner::limit(5)->get();
        $firms = Firm::where('image', '<>', '')->limit(5)->get();
        $categories = Category::limit(5)->get();;
        $new_products = Product::where('is_new', true)
            ->limit(4)
            ->orderBy('id', 'desc')
            ->get();

        return view('site.home', [
            'news_latest' => $news_latest,
            'partners' => $partners,
            'categories' => $categories,
            'firms' => $firms,
            'new_products' => $new_products
        ]);
    }

    public function about()
    {
        $awards = [
            [
                'img' => asset('imgs/awards/18.png'),
                'year' => '2019',
                'title' => '',
                'description' => 'Международный дегустационный конкурс. Москва. Золотая медаль.',
            ],
            [
                'img' => asset('imgs/awards/17.png'),
                'year' => '2019',
                'title' => '',
                'description' => 'Международный дегустационный конкурс. Москва. Серебряная медаль.',
            ],
            [
                'img' => asset('imgs/awards/10.png'),
                'year' => '2017',
                'title' => 'World Food',
                'description' => 'Международный дегустационный конкурс. Москва. Бронзовая медаль.',
            ],
            [
                'img' => asset('imgs/awards/06.png'),
                'year' => '2015',
                'title' => 'World Food',
                'description' => 'Международный дегустационный конкурс. Москва. Серебряная медаль.',
            ],
            [
                'img' => asset('imgs/awards/13.png'),
                'year' => '2015',
                'title' => 'ПРОДЭКСПО',
                'description' => 'Международный конкурс производственных товаров на выставке. Лучший продукт',
            ],
            [
                'img' => asset('imgs/awards/11.png'),
                'year' => '2014',
                'title' => 'World Food',
                'description' => 'Продукт года. Москва. Бронзовая медаль.',
            ],
            [
                'img' => asset('imgs/awards/03.png'),
                'year' => '2014',
                'title' => 'World Food',
                'description' => 'Международный дегустационный конкурс. Москва. Серебряная медаль.',
            ],
            [
                'img' => asset('imgs/awards/14.png'),
                'year' => '2014',
                'title' => 'World Food',
                'description' => 'Продукт года. Москва. Золотая медаль.',
            ],
            [
                'img' => asset('imgs/awards/08.png'),
                'year' => '2014',
                'title' => 'ВНИИЖ',
                'description' => 'Профессиональный дегустационный конкурс "Премия ВНИИЖ"',
            ],
            [
                'img' => asset('imgs/awards/04.png'),
                'year' => '2014',
                'title' => 'ВНИИЖ',
                'description' => 'Профессиональный дегустационный конкурс "Премия ВНИИЖ"',
            ],
            [
                'img' => asset('imgs/awards/07.png'),
                'year' => '2013',
                'title' => 'World Food',
                'description' => 'Международный дегустационный конкурс. Москва. Серебряная медаль.',
            ],
            [
                'img' => asset('imgs/awards/02.png'),
                'year' => '2013',
                'title' => 'World Food',
                'description' => 'Международный дегустационный конкурс. Москва. Золотая медаль.',
            ],
            [
                'img' => asset('imgs/awards/05.png'),
                'year' => '',
                'title' => '',
                'description' => 'Министерство сельского хозяйства РФ',
            ],
            [
                'img' => asset('imgs/awards/12.png'),
                'year' => '',
                'title' => 'Майонез №1 в России',
                'description' => 'Среди майонеза "На перепелийных яйцах"',
            ],
            [
                'img' => asset('imgs/awards/15.png'),
                'year' => '',
                'title' => '',
                'description' => 'Сертификат контроля качества продукции',
            ],
            [
                'img' => asset('imgs/awards/16.png'),
                'year' => '',
                'title' => '',
                'description' => 'Победитель программы контрольная закупка',
            ],
        ];
        return view('site.about', ['awards' => $awards]);
    }

    public function production()
    {
        return view('site.production');
    }

    public function partners()
    {
        $partners = Partner::all();

        return view('site.partners', [
            'partners' => $partners,
        ]);
    }
}
