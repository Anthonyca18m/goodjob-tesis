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

    Route::post('client/store',                         'API\ClientController@store');
    Route::post('client/profile/update',                'API\ClientController@update');
    Route::post('client/profile/img',                   'API\ClientController@updateImg');


    Route::post('activity/store',                       'API\ActivityController@store');
    Route::post('activity/update',                      'API\ActivityController@update');
    Route::get('activity/postulants/{activity_id}',     'API\ActivityController@getPostulants');
    Route::delete('activity/destroy/{activity_id}',     'API\ActivityController@destroy');
    Route::get('activity/show/{activity_id}',           'API\ActivityController@show');


    Route::post('postulation/store',                    'API\PostulationController@store');
    Route::delete('postulantion/delete/{id}',           'API\PostulationController@destroy');

    Route::post('postulation/accept',                   'API\PostulationController@accept');
    Route::post('postulation/denied',                   'API\PostulationController@denied');

    Route::post('comment/store',                        'API\CommentController@store');
    Route::get('comment/activity/list',                 'API\CommentController@getComments');

    Route::get('ubigeo/department',                     'API\UbigeoController@getDepartments');
    Route::get('ubigeo/province/{department_id}',       'API\UbigeoController@getProvinces');
    Route::get('ubigeo/district/{province_id}',         'API\UbigeoController@getDistricts');

    Route::get('bank/list',                             'API\BankController@index');
    Route::post('bank/store',                           'API\BankController@store');

    Route::get('bank/number/user/{user_id}',            'API\BankController@show');
    Route::delete('bank/user/delete/{id}',              'API\BankController@destroy');
    Route::get('bank/user/update/{id}',                 'API\BankController@updateStatus');

});
