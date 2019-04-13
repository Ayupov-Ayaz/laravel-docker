{!! Form::open(['route' => $route, 'id' => 'employmentForm', 'enctype' => 'multipart/form-data', 'onsubmit' => 'return formSubmit(event);']) !!}

<div class="form-group row {{ $errors->has('job_education_id') ? 'has-error' : '' }}">
    {{ Form::label('job_education_id', 'Образование', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::select('job_education_id', $educations, ($job ? $job->job_education_id : null), ['class' => $errors->has('job_education_id') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('job_education_id', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row{{ $errors->has('job_employment_id') ? 'has-error' : '' }}">
    {{ Form::label('job_employment_id', 'Занятость', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::select('job_employment_id', $employments, ($job ? $job->job_employment_id : null), ['class' => $errors->has('job_employment_id') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('job_employment_id', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('city_id') ? 'has-error' : '' }}">
    {{ Form::label('city_id', 'Город', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::select('city_id', $cities, ($job ? $job->city_id : null), ['class' => $errors->has('city_id') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('city_id', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('salary') ? 'has-error' : '' }}">
    {{ Form::hidden('salary', 'Уровень зарплаты', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::hidden('salary', 0, ['class' => $errors->has('salary') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('salary', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

@foreach(config('translatable.locales') as $locale)
    <h3>Данные на языке: {{$locale}}</h3>

    <div class="form-group row {{ $errors->has($locale.'[name]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[name]', 'Название ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::text($locale.'[name]', ($job ? $job->translateOrDefault($locale)->name : null), ['class' => $errors->has($locale.'.name') ? 'form-control is-invalid' : 'form-control']) }}
            {!! $errors->first($locale.'.name', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>

    <div class="form-group row {{ $errors->has($locale.'[responsibilities]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[responsibilities]', 'Обязанности ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::hidden($locale.'[responsibilities]', ($job ? $job->translateOrDefault($locale)->responsibilities : null), ['class' => 'form-control', 'id' => $locale.'responsibilities-input']) }}
            <div id="{{$locale.'responsibilities'}}">
                {!! $job ? $job->translate($locale)->responsibilities : '' !!}
            </div>
            {{ $errors->first($locale.'[responsibilities]', '<p class="help-block">:message</p>') }}
        </div>
    </div>
    <br>
    <br>

    <div class="form-group row {{ $errors->has($locale.'[conditions]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[conditions]', 'Условия ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::hidden($locale.'[conditions]', ($job ? $job->translateOrDefault($locale)->conditions : null), ['class' => 'form-control', 'id' => $locale.'conditions-input']) }}
            <div id="{{$locale.'conditions'}}">
                {!! $job ? $job->translate($locale)->conditions : '' !!}
            </div>
            {{ $errors->first($locale.'[conditions]', '<p class="help-block">:message</p>') }}
        </div>
    </div>
    <br>
    <br>

    <script>
        var {{$locale}}responsibilities_quill = new Quill('#{{$locale}}responsibilities', {
            theme: 'snow'
        });
        var {{$locale}}conditions_quill = new Quill('#{{$locale}}conditions', {
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
        var {{$locale}}responsibilities = document.querySelector('#{{$locale}}responsibilities-input');
        {{$locale}}responsibilities.value = {{$locale}}responsibilities_quill.container.firstChild.innerHTML;
        var {{$locale}}conditions = document.querySelector('#{{$locale}}conditions-input');
        {{$locale}}conditions.value = {{$locale}}conditions_quill.container.firstChild.innerHTML;
        @endforeach
            return true;
    };
</script>
