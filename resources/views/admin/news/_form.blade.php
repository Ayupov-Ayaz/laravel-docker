{!! Form::open(['route' => $route, 'id' => 'newsForm', 'enctype' => 'multipart/form-data', 'onsubmit' => 'return formSubmit(event);']) !!}

<div class="form-group row">
    {{ Form::label('image', 'Картинка ', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::file('image', null, ['class' => 'form-control']) }}
        {{ $errors->first('image', '<p class="help-block">:message</p>') }}
    </div>
</div>

@foreach(config('translatable.locales') as $locale)
    <h3>Данные на языке: {{$locale}}</h3>
    <div class="form-group row {{ $errors->has($locale.'[name]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[name]', 'Заголовок ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::text($locale.'[name]', ($news ? $news->translateOrDefault($locale)->name : null), ['class' => $errors->has($locale.'.name') ? 'form-control is-invalid' : 'form-control']) }}
            {!! $errors->first($locale.'.name', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>

    <div class="form-group row {{ $errors->has($locale.'[content]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[content]', 'Описание ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::hidden($locale.'[content]', ($news ? $news->translateOrDefault($locale)->content : null), ['class' => 'form-control', 'id' => $locale.'content-input']) }}
            <div id="{{$locale.'content'}}">
                {!! $news ? $news->translate($locale)->content : '' !!}
            </div>
            {{ $errors->first($locale.'[content]', '<p class="help-block">:message</p>') }}
        </div>
    </div>
    <br>
    <br>

    <script>
        var {{$locale}}content_quill = new Quill('#{{$locale}}content', {
            theme: 'snow'
        });
    </script>
@endforeach
<div class="form-group row">
    {{ Form::submit('Сохранить', ['class' => 'form-control btn btn-primary']) }}
</div>
{!! Form::close() !!}

<script>
    function formSubmit(e) {
        @foreach(config('translatable.locales') as $locale)
            var {{$locale}}content = document.querySelector('#{{$locale}}content-input');
            {{$locale}}content.value = {{$locale}}content_quill.container.firstChild.innerHTML;
        @endforeach
        return true;
    };
</script>
