<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
   // AppServiceProvider.php atau ServiceProvider lainnya
    public function boot()
    {
        $cart = Session::get('cart', []);
        $cartCount = count($cart);
        View::share('cartItems', $cart);
        View::share('cartCount', $cartCount);
    }

}
