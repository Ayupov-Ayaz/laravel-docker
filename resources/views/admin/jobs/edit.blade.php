@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование вакансии</h1>
    </div>
    @include('admin.jobs._form', [
        'route' => ['admin-jobs-edit-post', $job->id],
        'job' => $job,
        'employments' => $employments,
        'educations' => $educations,
        'cities' => $cities,
    ])
@endsection
