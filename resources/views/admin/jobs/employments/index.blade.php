@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Занятость</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group mr-2">
                <a href="{{ URL::route('admin-employments-create') }}" class="btn btn-sm btn-outline-secondary">Создать</a>
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
            @foreach($employments as $employment)
                <tr>
                    <td><a class="btn btn-link" href="{{URL::route('admin-employments-edit', ['employment_id' => $employment->id])}}">{{ $employment->id }}</a></td>
                    <td><a class="btn btn-link" href="{{URL::route('admin-employments-edit', ['employment_id' => $employment->id])}}">{{ $employment->name }}</a></td>
                    <td>
                        <a href="{{URL::route('admin-employments-remove', ['employment_id' => $employment->id])}}" class="btn btn-danger" title="Удалить">
                            <span data-feather="delete"></span>
                        </a>
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>

        {!! $employments->render() !!}
    </div>
@endsection
