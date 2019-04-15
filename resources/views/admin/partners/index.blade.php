@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Партнеры</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a href="{{ URL::route('admin-partners-create') }}" class="btn btn-sm btn-outline-secondary">Создать</a>
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
            @foreach($partners as $partner)
                <tr>
                    <td><a class="btn btn-link" href="{{URL::route('admin-partners-edit', ['partner_id' => $partner->id])}}">{{ $partner->id }}</a></td>
                    <td><a class="btn btn-link" href="{{URL::route('admin-partners-edit', ['partner_id' => $partner->id])}}">{{ $partner->name }}</a></td>
                    <td>
                        <a href="{{URL::route('admin-partners-remove', ['partner_id' => $partner->id])}}" class="btn btn-danger" title="Удалить">
                            <span data-feather="delete"></span>
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        {!! $partners->render() !!}
    </div>
@endsection
