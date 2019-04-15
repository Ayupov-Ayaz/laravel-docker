@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование категории</h1>
    </div>
    <img src="{{URL::to('/') . $category->image}}" alt="image" height="300"/>
    <br>
    <br>
    @include('admin.products.categories._form', ['route' => ['admin-categories-edit-post', $category->id], 'category' => $category])
@endsection
