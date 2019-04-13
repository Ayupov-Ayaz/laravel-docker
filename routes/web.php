<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', ['as' => 'home', 'uses' => 'Site\HomeController@index']);

Route::get('/catalog', ['as' => 'catalog-all', 'uses' => 'Site\CatalogController@index']);
Route::get('/catalog/{category_id}', ['as' => 'catalog', 'uses' => 'Site\CatalogController@index']);
Route::get('/catalog/{category_id}/firm/{firm_id}', ['as' => 'catalog-firm', 'uses' => 'Site\CatalogController@indexByFirm']);
Route::get('/catalog/{category_id}/firm/{firm_id}/type/{type_id}', ['as' => 'catalog-firm-type', 'uses' => 'Site\CatalogController@index']);
Route::get('/catalog/{category_id}/type/{type_id}', ['as' => 'catalog-type', 'uses' => 'Site\CatalogController@indexByType']);

Route::get('/product/{product_id}', ['as' => 'product', 'uses' => 'Site\ProductController@index']);
Route::get('/new-products', ['as' => 'new-products', 'uses' => 'Site\ProductController@newProducts']);

Route::get('/company/about', ['as' => 'about', 'uses' => 'Site\HomeController@about']);
Route::get('/company/contacts', ['as' => 'contacts', 'uses' => 'Site\ContactsController@index']);
Route::get('/company/contacts_sales', ['as' => 'contacts_sales', 'uses' => 'Site\ContactsController@sales']);
Route::get('/company/contacts_directorate', ['as' => 'contacts_directorate', 'uses' => 'Site\ContactsController@directorate']);
Route::get('/company/production', ['as' => 'production', 'uses' => 'Site\HomeController@production']);
Route::get('/company/partners', ['as' => 'partners', 'uses' => 'Site\HomeController@partners']);

Route::get('/news', ['as' => 'news-index', 'uses' => 'Site\NewsController@index']);
Route::get('/news/{id}', ['as' => 'news-view', 'uses' => 'Site\NewsController@view']);

Route::get('/jobs', ['as' => 'jobs', 'uses' => 'Site\JobsController@index']);
Route::get('/jobs/city/{id}', ['as' => 'jobs-city', 'uses' => 'Site\JobsController@index']);
Route::get('/jobs/{id}', ['as' => 'job', 'uses' => 'Site\JobsController@view']);

Route::post('/feedback/create/', ['as' => 'feedback-create', 'uses' => 'Site\FeedbackController@createPost']);

Auth::routes();

Route::get('/admin', function () {
    return redirect()->route('admin-products');
});

Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function () {
    Route::get('/products/', ['as' => 'admin-products', 'uses' => 'Admin\ProductController@index']);
    Route::get('/products/create/', ['as' => 'admin-products-create', 'uses' => 'Admin\ProductController@create']);
    Route::post('/products/create/', ['as' => 'admin-products-create-post', 'uses' => 'Admin\ProductController@createPost']);
    Route::get('/products/{id?}/edit/', ['as' => 'admin-products-edit', 'uses' => 'Admin\ProductController@edit']);
    Route::post('/products/{id?}/edit/', ['as' => 'admin-products-edit-post', 'uses' => 'Admin\ProductController@editPost']);
    Route::get('/products/{id?}/remove/', ['as' => 'admin-products-remove', 'uses' => 'Admin\ProductController@remove']);


    Route::get('/categories/', ['as' => 'admin-categories', 'uses' => 'Admin\CategoryController@index']);
    Route::get('/categories/create/', ['as' => 'admin-categories-create', 'uses' => 'Admin\CategoryController@create']);
    Route::post('/categories/create/', ['as' => 'admin-categories-create-post', 'uses' => 'Admin\CategoryController@createPost']);
    Route::get('/categories/{id?}/edit/', ['as' => 'admin-categories-edit', 'uses' => 'Admin\CategoryController@edit']);
    Route::post('/categories/{id?}/edit/', ['as' => 'admin-categories-edit-post', 'uses' => 'Admin\CategoryController@editPost']);
    Route::get('/categories/{id?}/remove/', ['as' => 'admin-categories-remove', 'uses' => 'Admin\CategoryController@remove']);

    Route::get('/firms/', ['as' => 'admin-firms', 'uses' => 'Admin\FirmController@index']);
    Route::get('/firms/create/', ['as' => 'admin-firms-create', 'uses' => 'Admin\FirmController@create']);
    Route::post('/firms/create/', ['as' => 'admin-firms-create-post', 'uses' => 'Admin\FirmController@createPost']);
    Route::get('/firms/{id?}/edit/', ['as' => 'admin-firms-edit', 'uses' => 'Admin\FirmController@edit']);
    Route::post('/firms/{id?}/edit/', ['as' => 'admin-firms-edit-post', 'uses' => 'Admin\FirmController@editPost']);
    Route::get('/firms/{id?}/remove/', ['as' => 'admin-firms-remove', 'uses' => 'Admin\FirmController@remove']);

    Route::get('/types/', ['as' => 'admin-product-types', 'uses' => 'Admin\ProductTypeController@index']);
    Route::get('/types/create/', ['as' => 'admin-product-types-create', 'uses' => 'Admin\ProductTypeController@create']);
    Route::post('/types/create/', ['as' => 'admin-product-types-create-post', 'uses' => 'Admin\ProductTypeController@createPost']);
    Route::get('/types/{id?}/edit/', ['as' => 'admin-product-types-edit', 'uses' => 'Admin\ProductTypeController@edit']);
    Route::post('/types/{id?}/edit/', ['as' => 'admin-product-types-edit-post', 'uses' => 'Admin\ProductTypeController@editPost']);
    Route::get('/types/{id?}/remove/', ['as' => 'admin-product-types-remove', 'uses' => 'Admin\ProductTypeController@remove']);

    Route::get('/advantages/', ['as' => 'admin-product-advantages', 'uses' => 'Admin\ProductAdvantageController@index']);
    Route::get('/advantages/create/', ['as' => 'admin-product-advantages-create', 'uses' => 'Admin\ProductAdvantageController@create']);
    Route::post('/advantages/create/', ['as' => 'admin-product-advantages-create-post', 'uses' => 'Admin\ProductAdvantageController@createPost']);
    Route::get('/advantages/{id?}/edit/', ['as' => 'admin-product-advantages-edit', 'uses' => 'Admin\ProductAdvantageController@edit']);
    Route::post('/advantages/{id?}/edit/', ['as' => 'admin-product-advantages-edit-post', 'uses' => 'Admin\ProductAdvantageController@editPost']);
    Route::get('/advantages/{id?}/remove/', ['as' => 'admin-product-advantages-remove', 'uses' => 'Admin\ProductAdvantageController@remove']);

    Route::get('/packs/', ['as' => 'admin-product-packs', 'uses' => 'Admin\PackController@index']);
    Route::get('/packs/create/', ['as' => 'admin-product-packs-create', 'uses' => 'Admin\PackController@create']);
    Route::post('/packs/create/', ['as' => 'admin-product-packs-create-post', 'uses' => 'Admin\PackController@createPost']);
    Route::get('/packs/{id?}/edit/', ['as' => 'admin-product-packs-edit', 'uses' => 'Admin\PackController@edit']);
    Route::post('/packs/{id?}/edit/', ['as' => 'admin-product-packs-edit-post', 'uses' => 'Admin\PackController@editPost']);
    Route::get('/packs/{id?}/remove/', ['as' => 'admin-product-packs-remove', 'uses' => 'Admin\PackController@remove']);

    Route::get('/volumes/', ['as' => 'admin-product-volumes', 'uses' => 'Admin\VolumeController@index']);
    Route::get('/volumes/create/', ['as' => 'admin-product-volumes-create', 'uses' => 'Admin\VolumeController@create']);
    Route::post('/volumes/create/', ['as' => 'admin-product-volumes-create-post', 'uses' => 'Admin\VolumeController@createPost']);
    Route::get('/volumes/{id?}/edit/', ['as' => 'admin-product-volumes-edit', 'uses' => 'Admin\VolumeController@edit']);
    Route::post('/volumes/{id?}/edit/', ['as' => 'admin-product-volumes-edit-post', 'uses' => 'Admin\VolumeController@editPost']);
    Route::get('/volumes/{id?}/remove/', ['as' => 'admin-product-volumes-remove', 'uses' => 'Admin\VolumeController@remove']);

    Route::get('/jobs/', ['as' => 'admin-jobs', 'uses' => 'Admin\JobController@index']);
    Route::get('/jobs/create/', ['as' => 'admin-jobs-create', 'uses' => 'Admin\JobController@create']);
    Route::post('/jobs/create/', ['as' => 'admin-jobs-create-post', 'uses' => 'Admin\JobController@createPost']);
    Route::get('/jobs/{id?}/edit/', ['as' => 'admin-jobs-edit', 'uses' => 'Admin\JobController@edit']);
    Route::post('/jobs/{id?}/edit/', ['as' => 'admin-jobs-edit-post', 'uses' => 'Admin\JobController@editPost']);
    Route::get('/jobs/{id?}/remove/', ['as' => 'admin-jobs-remove', 'uses' => 'Admin\JobController@remove']);

    Route::get('/cities/', ['as' => 'admin-cities', 'uses' => 'Admin\CityController@index']);
    Route::get('/cities/create/', ['as' => 'admin-cities-create', 'uses' => 'Admin\CityController@create']);
    Route::post('/cities/create/', ['as' => 'admin-cities-create-post', 'uses' => 'Admin\CityController@createPost']);
    Route::get('/cities/{id?}/edit/', ['as' => 'admin-cities-edit', 'uses' => 'Admin\CityController@edit']);
    Route::post('/cities/{id?}/edit/', ['as' => 'admin-cities-edit-post', 'uses' => 'Admin\CityController@editPost']);
    Route::get('/cities/{id?}/remove/', ['as' => 'admin-cities-remove', 'uses' => 'Admin\CityController@remove']);

    Route::get('/employments/', ['as' => 'admin-employments', 'uses' => 'Admin\EmploymentController@index']);
    Route::get('/employments/create/', ['as' => 'admin-employments-create', 'uses' => 'Admin\EmploymentController@create']);
    Route::post('/employments/create/', ['as' => 'admin-employments-create-post', 'uses' => 'Admin\EmploymentController@createPost']);
    Route::get('/employments/{id?}/edit/', ['as' => 'admin-employments-edit', 'uses' => 'Admin\EmploymentController@edit']);
    Route::post('/employments/{id?}/edit/', ['as' => 'admin-employments-edit-post', 'uses' => 'Admin\EmploymentController@editPost']);
    Route::get('/employments/{id?}/remove/', ['as' => 'admin-employments-remove', 'uses' => 'Admin\EmploymentController@remove']);

    Route::get('/educations/', ['as' => 'admin-educations', 'uses' => 'Admin\EducationController@index']);
    Route::get('/educations/create/', ['as' => 'admin-educations-create', 'uses' => 'Admin\EducationController@create']);
    Route::post('/educations/create/', ['as' => 'admin-educations-create-post', 'uses' => 'Admin\EducationController@createPost']);
    Route::get('/educations/{id?}/edit/', ['as' => 'admin-educations-edit', 'uses' => 'Admin\EducationController@edit']);
    Route::post('/educations/{id?}/edit/', ['as' => 'admin-educations-edit-post', 'uses' => 'Admin\EducationController@editPost']);
    Route::get('/educations/{id?}/remove/', ['as' => 'admin-educations-remove', 'uses' => 'Admin\EducationController@remove']);

    Route::get('/news/', ['as' => 'admin-news', 'uses' => 'Admin\NewsController@index']);
    Route::get('/news/create/', ['as' => 'admin-news-create', 'uses' => 'Admin\NewsController@create']);
    Route::post('/news/create/', ['as' => 'admin-news-create-post', 'uses' => 'Admin\NewsController@createPost']);
    Route::get('/news/{id?}/edit/', ['as' => 'admin-news-edit', 'uses' => 'Admin\NewsController@edit']);
    Route::post('/news/{id?}/edit/', ['as' => 'admin-news-edit-post', 'uses' => 'Admin\NewsController@editPost']);
    Route::get('/news/{id?}/remove/', ['as' => 'admin-news-remove', 'uses' => 'Admin\NewsController@remove']);

    Route::get('/partners/', ['as' => 'admin-partners', 'uses' => 'Admin\PartnerController@index']);
    Route::get('/partners/create/', ['as' => 'admin-partners-create', 'uses' => 'Admin\PartnerController@create']);
    Route::post('/partners/create/', ['as' => 'admin-partners-create-post', 'uses' => 'Admin\PartnerController@createPost']);
    Route::get('/partners/{id?}/edit/', ['as' => 'admin-partners-edit', 'uses' => 'Admin\PartnerController@edit']);
    Route::post('/partners/{id?}/edit/', ['as' => 'admin-partners-edit-post', 'uses' => 'Admin\PartnerController@editPost']);
    Route::get('/partners/{id?}/remove/', ['as' => 'admin-partners-remove', 'uses' => 'Admin\PartnerController@remove']);

    Route::get('/feedback/', ['as' => 'admin-feedback', 'uses' => 'Admin\FeedbackController@index']);
});
