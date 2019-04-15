@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Новая вакансия</h1>
    </div>

    @include('admin.jobs._form', [
        'route' => 'admin-jobs-create-post',
        'job' => null,
        'employments' => $employments,
        'educations' => $educations,
        'cities' => $cities,
    ])
@endsection
