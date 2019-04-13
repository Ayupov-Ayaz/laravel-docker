@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование новости</h1>
    </div>
    <img src="{{URL::to('/') . $news->image}}" alt="image" height="300"/>
    <br>
    <br>
    @include('admin.news._form', ['route' => ['admin-news-edit-post', $news->id], 'news' => $news])
@endsection
