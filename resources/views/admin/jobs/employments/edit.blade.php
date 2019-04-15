@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование занятости</h1>
    </div>
    @include('admin.jobs.employments._form', ['route' => ['admin-employments-edit-post', $employment->id], 'employment' => $employment])
@endsection
