@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование типа товаров</h1>
    </div>
    @include('admin.products.types._form', ['route' => ['admin-product-types-edit-post', $product_type->id], 'product_type' => $product_type])
@endsection
