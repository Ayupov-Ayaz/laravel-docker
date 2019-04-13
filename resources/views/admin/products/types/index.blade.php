@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Типы товаров</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a href="{{ URL::route('admin-product-types-create') }}" class="btn btn-sm btn-outline-secondary">Создать</a>
            </div>
        </div>
    </div>

    <div class="table-responsive">
        <table class="table table-striped table-sm">
            <thead>
            <tr>
                <th>#</th>
                <th>Название</th>
                <th>Действия</th>
            </tr>
            </thead>
            <tbody>
            @foreach($product_types as $product_type)
                <tr>
                    <td><a class="btn btn-link" href="{{URL::route('admin-product-types-edit', ['type_id' => $product_type->id])}}">{{ $product_type->id }}</a></td>
                    <td><a class="btn btn-link" href="{{URL::route('admin-product-types-edit', ['type_id' => $product_type->id])}}">{{ $product_type->name }}</a></td>
                    <td>
                        <a href="{{URL::route('admin-product-types-remove', ['type_id' => $product_type->id])}}" class="btn btn-danger" title="Удалить">
                            <span data-feather="delete"></span>
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        {!! $product_types->render() !!}
    </div>
@endsection
