<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\RequiredNewsPost;
use App\Models\News;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;

class NewsController extends Controller
{
    public function index(){
        $news = News::orderBy('id', 'desc')->paginate(15);
        return view('admin.news.index', ['news'=>$news]);

    }

    public function create(){
        return view('admin.news.create');
    }

    public function createPost(RequiredNewsPost $request){
        $data = $request->all();
        unset($data['_token']);
        $image = $request->file('image');
        $data['image'] = '';
        if ($image) {
            $data['image'] = str_replace('public', '/storage', $image->store('public/news'));
        }
        News::create($data);
        return Redirect::route('admin-news');
    }

    public function edit($news_id){
        $news = News::find($news_id);

        return view('admin.news.edit',['news'=>$news]);
    }

    public function editPost(RequiredNewsPost $request, $news_id){
        $data = $request->all();
        $news = News::find($news_id);
        $image = $request->file('image');
        if ($image) {
            $news->image = str_replace('public', '/storage', $image->store('public/news'));
        }

        foreach (config('translatable.locales') as $locale) {
            $news->translateOrNew($locale)->name = $data[$locale]['name'];
            $news->translateOrNew($locale)->content = $data[$locale]['content'];
        }
        $news->save();
        return Redirect::route('admin-news');
    }

    public function remove($news_id) {
        News::destroy($news_id);
        return Redirect::route('admin-news');
    }
}
