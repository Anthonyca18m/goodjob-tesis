<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::group(['prefix' => 'web/'], function() {

    Route::post('client/register',                    'API\ClientController@store');


    Route::post('activity/register',                  'API\ActivityController@store');


    Route::post('postulation/register',               'API\PostulationController@store');


    Route::get('ubigeo/district/{province_id}',       'API\UbigeoController@getDistricts');

});
