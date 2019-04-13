<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Codberry">

    <title>Администратор Mr. Ricco</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    <!-- Custom styles for this template -->
    <link href="{{ asset('css/admin/style.css') }}" rel="stylesheet">
</head>

<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">{{ config('app.name', 'Laravel') }}</a>
    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            @guest
            @else
                <a class="nav-link" href="{{ route('logout') }}"
                   onclick="event.preventDefault();
                                                 document.getElementById('logout-form').submit();">
                    {{ __('Выход') }}
                </a>

                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
            @endguest
        </li>
    </ul>
</nav>

<div class="container-fluid">
<div class="row">
@if(Auth::check())
    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
        <div class="sidebar-sticky">
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/news*') ? 'active' : '' }}" href="{{ URL::route('admin-news') }}">
                        <span data-feather="file-text"></span>
                        Новости
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/partners*') ? 'active' : '' }}" href="{{ URL::route('admin-partners') }}">
                        <span data-feather="file-text"></span>
                        Партнеры
                    </a>
                </li>
            </ul>
            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                <span>Товары</span>
            </h6>
            <ul class="nav flex-column mb-2">
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/products*') ? 'active' : '' }}" href="{{ URL::route('admin-products') }}">
                        <span data-feather="file-text"></span>
                        Товары
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/categories*') ? 'active' : '' }}" href="{{ URL::route('admin-categories') }}">
                        <span data-feather="file-text"></span>
                        Категории
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/firms*') ? 'active' : '' }}" href="{{ URL::route('admin-firms') }}">
                        <span data-feather="file-text"></span>
                        Бренды
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/types*') ? 'active' : '' }}" href="{{ URL::route('admin-product-types') }}">
                        <span data-feather="file-text"></span>
                        Типы товаров
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/advantages*') ? 'active' : '' }}" href="{{ URL::route('admin-product-advantages') }}">
                        <span data-feather="file-text"></span>
                        Преимущества
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/packs*') ? 'active' : '' }}" href="{{ URL::route('admin-product-packs') }}">
                        <span data-feather="file-text"></span>
                        Упаковки
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/volumes*') ? 'active' : '' }}" href="{{ URL::route('admin-product-volumes') }}">
                        <span data-feather="file-text"></span>
                        Объемы
                    </a>
                </li>
            </ul>

            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                <span>Вакансии</span>
            </h6>
            <ul class="nav flex-column mb-2">
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/jobs*') ? 'active' : '' }}" href="{{ URL::route('admin-jobs') }}">
                        <span data-feather="file-text"></span>
                        Вакансии
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/educations*') ? 'active' : '' }}" href="{{ URL::route('admin-educations') }}">
                        <span data-feather="file-text"></span>
                        Образование
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/employments*') ? 'active' : '' }}" href="{{ URL::route('admin-employments') }}">
                        <span data-feather="file-text"></span>
                        Занятость
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/cities*') ? 'active' : '' }}" href="{{ URL::route('admin-cities') }}">
                        <span data-feather="file-text"></span>
                        Города
                    </a>
                </li>
            </ul>

            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                <span>Обратная связь</span>
            </h6>
            <ul class="nav flex-column mb-2">
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('admin/feedback*') ? 'active' : '' }}" href="{{ URL::route('admin-feedback') }}">
                        <span data-feather="file-text"></span>
                        Обратная связь
                    </a>
                </li>
            </ul>

        </div>
    </nav>
@endif

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
    @yield('content')
</main>
</div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>


<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
feather.replace()
</script>



</body>
</html>

