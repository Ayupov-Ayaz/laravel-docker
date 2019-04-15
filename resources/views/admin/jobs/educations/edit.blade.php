@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование образования</h1>
    </div>
    @include('admin.jobs.educations._form', ['route' => ['admin-educations-edit-post', $education->id], 'education' => $education])
@endsection
