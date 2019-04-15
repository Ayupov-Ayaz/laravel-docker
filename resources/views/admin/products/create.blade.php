@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Новый товар</h1>
    </div>

    @include('admin.products._form', [
        'route' => 'admin-products-create-post',
        'product' => null,
        'categories' => $categories,
        'firms' => $firms,
        'product_types' => $product_types,
        'product_advantages' => $product_advantages,
        'packs' => $packs,
        'volumes' => $volumes,
    ])
@endsection
