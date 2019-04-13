{!! Form::open(['route' => $route, 'id' => 'categoryForm', 'enctype' => 'multipart/form-data']) !!}

<div class="form-group row">
    {{ Form::label('image', 'Картинка ', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::file('image', null, ['class' => 'form-control']) }}
        {{ $errors->first('image', '<p class="help-block">:message</p>') }}
    </div>
</div>

@foreach(config('translatable.locales') as $locale)
    <div class="form-group row {{ $errors->has($locale.'[name]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[name]', 'Название ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::text($locale.'[name]', ($category ? $category->translateOrDefault($locale)->name : null), ['class' => $errors->has($locale.'.name') ? 'form-control is-invalid' : 'form-control']) }}
            {!! $errors->first($locale.'.name', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>
@endforeach
<div class="form-group row">
    {{ Form::submit('Сохранить', ['class' => 'form-control btn btn-primary']) }}
</div>
{!! Form::close() !!}
