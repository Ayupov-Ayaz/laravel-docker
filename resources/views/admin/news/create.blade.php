@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Новая новость</h1>
    </div>
    @include('admin.news._form', ['route' => 'admin-news-create-post', 'news' => null])

@endsection
