<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class NewsController extends Controller
{
    public function index()
    {
        $news = News::orderBy('id', 'desc')
            ->paginate(15);


        return view('site.news', [
            'news' => $news,
        ]);
    }

    public function view($id)
    {
        $news_item = News::find($id);
        $news_latest = News::orderBy('id', 'desc')
            ->limit(2)->get();

        return view('site.news-view', [
            'news_item' => $news_item,
            'news_latest' => $news_latest,
        ]);
    }
}
