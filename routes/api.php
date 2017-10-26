<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. 
|
*/

//post new staff detail route
Route::post('/info', [
    'uses' => 'StaffController@postStaff'
]);

//post staff members checkin time route
Route::post('/ework', [
    'uses' => 'StaffController@postWork'
]);

//get staff members details
Route::get('/infos', [
    'uses' => 'StaffController@getStaffs'
]);

//get each department emplyee details
Route::get('/dept/{id}', [
    'uses' => 'StaffController@getDeptinfo'
]);

//update staff members details
Route::put('/info/{id}',[
    'uses' => 'StaffController@putStaff'
]);

//delete staff members route
Route::delete('/info/{id}',[
    'uses' => 'StaffController@deleteStaff'
]);
