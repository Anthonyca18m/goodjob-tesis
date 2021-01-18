<?php

namespace App\Providers;

use App\Models\Activity;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\ServiceProvider;

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
    public function boot()
    {
        view()->composer('*', function ($view) {

            $view->with('user', User::with(['profile', 'image', 'accountBanks'])->find(Auth::user()->id ?? null));
        });

        view()->composer('layouts.footer', function ($view) {

            $view->with('activities', Activity::with(['resource' => function ($query) {
                    $query->where('type_resource_id', 2);
                }])
                ->with('district')
                ->where('status', 1)->limit(3)->OrderByDesc('created_at')->get()
            );
        });
    }
}
