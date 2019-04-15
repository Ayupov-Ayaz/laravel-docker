<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\RequiredOtherPost;
use App\Models\Category;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;

class CategoryController extends Controller
{
    public function index(){
        $categories = Category::orderBy('id', 'desc')->paginate(15);
        return view('admin.products.categories.index', ['categories'=>$categories]);

    }

    public function create(){
        return view('admin.products.categories.create');
    }

    public function createPost(RequiredOtherPost $request){
        $data = $request->all();
        unset($data['_token']);
        $data['image'] = str_replace('public', '/storage', $request->file('image')->store('public/category'));
        Category::create($data);
        return Redirect::route('admin-categories');
    }

    public function edit($category_id){
        $category = Category::find($category_id);
        return view('admin.products.categories.edit',['category'=>$category]);
    }

    public function editPost(RequiredOtherPost $request, $category_id){
        $data = $request->all();
        $category = Category::find($category_id);
        $image = $request->file('image');
        if ($image) {
            $category->image = str_replace('public', '/storage', $image->store('public/category'));
        }

        foreach (config('translatable.locales') as $locale) {
            $category->translateOrNew($locale)->name = $data[$locale]['name'];
        }
        $category->save();
        return Redirect::route('admin-categories');
    }

    public function remove($category_id) {
        Category::destroy($category_id);
        return Redirect::route('admin-categories');
    }
}
