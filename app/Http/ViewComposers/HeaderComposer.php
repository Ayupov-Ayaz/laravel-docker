<?php

namespace App\Http\ViewComposers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\View\View;

class HeaderComposer
{
    protected $categories;

    public function __construct()
    {
        $this->new_products = Product::where('is_new', true)
            ->orderBy('id', 'desc')
            ->limit(3)
            ->get();
        $this->categories = Category::all();
    }

    /**
     * Bind data to the view.
     *
     * @param  View  $view
     * @return void
     */
    public function compose(View $view)
    {
        $view->with('categories', $this->categories);
        $view->with('new_products', $this->new_products);
    }
}
