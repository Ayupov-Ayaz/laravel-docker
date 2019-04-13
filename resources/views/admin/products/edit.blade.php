@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование товара</h1>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <p>Картинка</p>
        </div>
        <div class="col-sm-5">
            <img src="{{URL::to('/') . $product->image}}" alt="image" height="300"/>
        </div>
    </div>
    <br>
    <br>
    <div class="row">
        <div class="col-sm-3">
            <p>Маленькое изображение</p>
        </div>
        <div class="col-sm-5">
            <img src="{{URL::to('/') . $product->thumb}}" alt="image" height="300"/>
        </div>
    </div>
    <br>
    <br>
    @include('admin.products._form', [
        'route' => ['admin-products-edit-post', $product->id],
        'product' => $product,
        'categories' => $categories,
        'firms' => $firms,
        'product_types' => $product_types,
        'product_advantages' => $product_advantages,
        'packs' => $packs,
        'volumes' => $volumes,
    ])
@endsection
