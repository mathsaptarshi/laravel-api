<?php

use Illuminate\Http\Request;
use App\Http\Controllers\BureauDetailsController;
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

Route::get('/verified-only', function(Request $request){
    dd('your are verified', $request->user()->name);
})->middleware('auth:api','verified');

    // Authentication For User
    Route::post('/register', 'Api\AuthController@register');
    Route::post('/login', 'Api\AuthController@login');
    Route::post('/password/email', 'Api\ForgotPasswordController@sendResetLinkEmail');
    Route::post('/password/reset', 'Api\ResetPasswordController@reset');
    Route::get('/email/resend', 'Api\VerificationController@resend')->name('verification.resend');
    Route::get('/email/verify/{id}/{hash}', 'Api\VerificationController@verify')->name('verification.verify');
    Route::apiResource('tasks','Api\TasksController')->middleware('auth:api');

    //Test Api for Marriage Bureau
    Route::get('/getallbureau', 'BureauDetailsController@manage_bureau');
    Route::post('/createbureau', 'BureauDetailsController@bureau_store');
    // Route::get('/getallbureau', function (Request $request) {
    //     return $request->user();
    // });