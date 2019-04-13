{!! Form::open(['route' => $route, 'id' => 'partnerForm', 'enctype' => 'multipart/form-data']) !!}

<div class="form-group row">
    {{ Form::label('image', 'Картинка ', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::file('image', null, ['class' => 'form-control']) }}
        {{ $errors->first('image', '<p class="help-block">:message</p>') }}
    </div>
</div>
<div class="form-group row {{ $errors->has('www') ? 'has-error' : '' }}">
    {{ Form::label('www', 'Ссылка ', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::text('www', ($partner ? $partner->www : null), ['class' => $errors->has('www') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('www', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

@foreach(config('translatable.locales') as $locale)
    <h3>Данные на языке: {{$locale}}</h3>
    <div class="form-group row {{ $errors->has($locale.'[name]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[name]', 'Название ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::text($locale.'[name]', ($partner ? $partner->translateOrDefault($locale)->name : null), ['class' => $errors->has($locale.'.name') ? 'form-control is-invalid' : 'form-control']) }}
            {!! $errors->first($locale.'.name', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>
    <div class="form-group row {{ $errors->has($locale.'[description]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[description]', 'Краткое описание ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::text($locale.'[description]', ($partner ? $partner->translateOrDefault($locale)->description : null), ['class' => 'form-control']) }}
            {{ $errors->first($locale.'[description]', '<p class="help-block">:message</p>') }}
        </div>
    </div>
@endforeach
<div class="form-group row">
    {{ Form::submit('Сохранить', ['class' => 'form-control btn btn-primary']) }}
</div>
{!! Form::close() !!}
