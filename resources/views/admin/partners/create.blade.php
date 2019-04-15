@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Новый партнер</h1>
    </div>
    @include('admin.partners._form', ['route' => 'admin-partners-create-post', 'partner' => null])

@endsection
