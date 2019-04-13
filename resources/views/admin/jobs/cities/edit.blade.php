@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование города</h1>
    </div>
    @include('admin.products.cities._form', ['route' => ['admin-cities-edit-post', $city->id], 'city' => $city])
@endsection
