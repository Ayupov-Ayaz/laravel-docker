@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Преимущества товаров</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a href="{{ URL::route('admin-product-advantages-create') }}" class="btn btn-sm btn-outline-secondary">Создать</a>
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
            @foreach($product_advantages as $product_advantage)
                <tr>
                    <td><a class="btn btn-link" href="{{URL::route('admin-product-advantages-edit', ['product_advantage_id' => $product_advantage->id])}}">{{ $product_advantage->id }}</a></td>
                    <td><a class="btn btn-link" href="{{URL::route('admin-product-advantages-edit', ['product_advantage_id' => $product_advantage->id])}}">{{ $product_advantage->name }}</a></td>
                    <td>
                        <a href="{{URL::route('admin-product-advantages-remove', ['product_advantage_id' => $product_advantage->id])}}" class="btn btn-danger" title="Удалить">
                            <span data-feather="delete"></span>
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        {!! $product_advantages->render() !!}
    </div>
@endsection
