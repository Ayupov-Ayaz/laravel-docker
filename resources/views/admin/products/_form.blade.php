{!! Form::open(['route' => $route, 'id' => 'categoryForm', 'enctype' => 'multipart/form-data', 'onsubmit' => 'return formSubmit(event);']) !!}

<div class="form-group row{{ $errors->has('category_id') ? 'has-error' : '' }}">
    {{ Form::label('category_id', 'Категория', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::select('category_id', $categories, ($product ? $product->category_id : null), ['class' => $errors->has('category_id') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('category_id', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('firm_id') ? 'has-error' : '' }}">
    {{ Form::label('firm_id', 'Бренд', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::select('firm_id', $firms, ($product ? $product->firm_id : null), ['class' => $errors->has('firm_id') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('firm_id', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('product_type_id') ? 'has-error' : '' }}">
    {{ Form::label('product_type_id', 'Тип', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::select('product_type_id', $product_types, ($product ? $product->product_type_id : null), ['class' => $errors->has('product_type_id') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('product_type_id', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row">
    {{ Form::label('thumb', 'Маленькое изображение ', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::file('thumb', null, ['class' => $errors->has('thumb') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('thumb', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row">
    {{ Form::label('image', 'Картинка ', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::file('image', null, ['class' => $errors->has('image') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('image', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('youtube') ? 'has-error' : '' }}">
    {{ Form::label('youtube', 'Youtube видео', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::text('youtube', ($product ? $product->youtube : null), ['class' => $errors->has('youtube') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('youtube', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('fat') ? 'has-error' : '' }}">
    {{ Form::label('fat', 'Процент жирности', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::number('fat', ($product ? $product->fat : null), ['class' => $errors->has('fat') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('fat', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('fat') ? 'has-error' : '' }}">
    {{ Form::label('exp', 'Срок годности (месяцев)', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::number('exp', ($product ? $product->exp : null), ['class' => $errors->has('exp') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('exp', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('packs') ? 'has-error' : '' }}">
    {{ Form::label('packs', 'Штук в упаковке', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::number('packs', ($product ? $product->packs : null), ['class' => $errors->has('packs') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('packs', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('calorie') ? 'has-error' : '' }}">
    {{ Form::label('calorie', 'Калорий', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::number('calorie', ($product ? $product->calorie : null), ['class' => $errors->has('calorie') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('calorie', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('temperature_from') ? 'has-error' : '' }}">
    {{ Form::label('temperature_from', 'Температура хранения от', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::number('temperature_from', ($product ? $product->temperature_from : null), ['class' => $errors->has('temperature_from') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('temperature_from', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('temperature_to') ? 'has-error' : '' }}">
    {{ Form::label('temperature_to', 'Температура хранения до', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::number('temperature_to', ($product ? $product->temperature_to : null), ['class' => $errors->has('temperature_to') ? 'form-control is-invalid' : 'form-control']) }}
        {!! $errors->first('temperature_to', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row {{ $errors->has('is_new') ? 'has-error' : '' }}">
    {{ Form::label('is_new', 'Новинка', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        {{ Form::checkbox('is_new', '1', $product && $product->is_new, ['class' => 'form-control']) }}
        {{ $errors->first('is_new', '<div class="invalid-feedback">:message</div>') }}
    </div>
</div>

<div class="form-group row {{ $errors->has('product_packs') ? 'has-error' : '' }}">
    {{ Form::label('product_packs[]', 'Упаковки', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        <select multiple="multiple" name="product_packs[]" class="form-control @if($errors->has('product_packs')) is-invalid @endif">
            @foreach($packs as $pack)
                <option value="{{$pack->id}}" @if($product && $product->product_packs->contains($pack->id))selected="selected"@endif>{{$pack->name}}</option>
            @endforeach
        </select>
        {!! $errors->first('product_packs', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row">
    {{ Form::label('volumes[]', 'Объемы', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        <select multiple="multiple" name="volumes[]" class="form-control @if($errors->has('volumes')) is-invalid @endif">
            @foreach($volumes as $volume)
                <option value="{{$volume->id}}" @if($product && $product->volumes->contains($volume->id))selected="selected"@endif>{{$volume->name}}</option>
            @endforeach
        </select>
        {!! $errors->first('volumes', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

<div class="form-group row">
    {{ Form::label('product_advantages[]', 'Преимущества', ['class' => 'col-sm-2 col-form-label']) }}
    <div class="col-sm-10">
        <select multiple="multiple" name="product_advantages[]" class="form-control @if($errors->has('product_advantages')) is-invalid @endif">
            @foreach($product_advantages as $product_advantage)
                <option value="{{$product_advantage->id}}" @if($product && $product->advantages->contains($product_advantage->id))selected="selected"@endif>{{$product_advantage->name}}</option>
            @endforeach
        </select>
        {!! $errors->first('product_advantages', '<div class="invalid-feedback">:message</div>') !!}
    </div>
</div>

@foreach(config('translatable.locales') as $locale)
    <h3>Данные на языке: {{$locale}}</h3>

    <div class="form-group row {{ $errors->has($locale.'.name') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[name]', 'Название ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::text($locale.'[name]', ($product ? $product->translateOrDefault($locale)->name : null), ['class' => $errors->has($locale.'.name') ? 'form-control is-invalid' : 'form-control']) }}
            {!! $errors->first($locale.'.name', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>

    <div class="form-group row {{ $errors->has($locale.'[details]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[details]', 'Краткое описание ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::text($locale.'[details]', ($product ? $product->translateOrDefault($locale)->details : null), ['class' => $errors->has($locale.'.details') ? 'form-control is-invalid' : 'form-control']) }}
            {!! $errors->first($locale.'.details', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>

    <div class="form-group row {{ $errors->has($locale.'[description]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[description]', 'Описание ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::text($locale.'[description]', ($product ? $product->translateOrDefault($locale)->description : null), ['class' => $errors->has($locale.'.description') ? 'form-control is-invalid' : 'form-control']) }}
            {!! $errors->first($locale.'.description', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>
    <br>
    <br>

    <div class="form-group row {{ $errors->has($locale.'[special]') ? 'has-error' : '' }}">
        {{ Form::label($locale.'[special]', 'Особенности ' . $locale, ['class' => 'col-sm-2 col-form-label']) }}
        <div class="col-sm-10">
            {{ Form::hidden($locale.'[special]', ($product ? $product->translateOrDefault($locale)->special : null), ['class' => 'form-control', 'id' => $locale.'special-input']) }}
            <div id="{{$locale.'special'}}">
                {!! $product ? $product->translateOrDefault($locale)->special : '' !!}
            </div>
            {!! $errors->first($locale.'.special', '<div class="invalid-feedback">:message</div>') !!}
        </div>
    </div>
    <br>
    <br>

    <script>
        var {{$locale}}special_quill = new Quill('#{{$locale}}special', {
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
            var {{$locale}}special = document.querySelector('#{{$locale}}special-input');
            {{$locale}}special.value = {{$locale}}special_quill.container.firstChild.innerHTML;
        @endforeach
        return true;
    };
</script>

