@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование объема</h1>
    </div>
    @include('admin.products.volumes._form', ['route' => ['admin-product-volumes-edit-post', $volume->id], 'volume' => $volume])
@endsection
