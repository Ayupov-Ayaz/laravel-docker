@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Товары</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a href="{{ URL::route('admin-products-create') }}" class="btn btn-sm btn-outline-secondary">Создать</a>
            </div>
        </div>
    </div>

    <div class="table-responsive">
        <table class="table table-striped table-sm">
            <thead>
            <tr>
                <th>#</th>
                <th>Название</th>
                <th>Краткое описание</th>
                <th>Действия</th>
            </tr>
            </thead>
            <tbody>
            @foreach($products as $product)
                <tr>
                    <td><a class="btn btn-link" href="{{URL::route('admin-products-edit', ['product_id' => $product->id])}}">{{ $product->id }}</a></td>
                    <td><a class="btn btn-link" href="{{URL::route('admin-products-edit', ['product_id' => $product->id])}}">{{ $product->details }}</a></td>
                    <td><a class="btn btn-link" href="{{URL::route('admin-products-edit', ['product_id' => $product->id])}}">{{ $product->name }}</a></td>
                    <td>
                        <a href="{{URL::route('admin-products-remove', ['product_id' => $product->id])}}" class="btn btn-danger" title="Удалить">
                            <span data-feather="delete"></span>
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        {!! $products->render() !!}
    </div>
@endsection
