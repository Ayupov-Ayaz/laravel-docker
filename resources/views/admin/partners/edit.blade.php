@extends('admin.layout')

@section('content')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Редактирование партнера</h1>
    </div>
    <img src="{{URL::to('/') . $partner->image}}" alt="image" height="300"/>
    <br>
    <br>
    @include('admin.partners._form', ['route' => ['admin-partners-edit-post', $partner->id], 'partner' => $partner])
@endsection
