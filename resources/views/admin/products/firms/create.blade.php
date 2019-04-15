@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Новый бренд</h1>
    </div>
    @include('admin.products.firms._form', ['route' => 'admin-firms-create-post', 'firm' => null])

@endsection
