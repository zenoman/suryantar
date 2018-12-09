<?php
use Illuminate\Support\Facades\Input;
Route::get('/carikode','resipengiriman\resipengirimanController@carikode');
Route::get('/laporan','laporan\laporandarat@index');
Route::get('/','Login\Logincontroller@index');
Route::get('/dashboard','Dashboardcontroller@index');
//==============================================resi pengiriman
Route::resource('/residarat','resipengiriman\resipengirimanController');
Route::get('/carikota','resipengiriman\resipengirimanController@carikota');
Route::get('/resipengirimandarat','resipengiriman\resipengirimanController@residarat');
//===========================================admin
Route::get('/admin','Admin\Admincontroller@index');
Route::post('/admin','Admin\Admincontroller@store');
Route::get('/admin/create','Admin\Admincontroller@create');
Route::get('/admin/{id}','Admin\Admincontroller@edit');
Route::put('/admin/{id}','Admin\Admincontroller@update');
Route::get('/admin/{id}/delete','Admin\Admincontroller@destroy');
Route::get('/admin/{id}/changepas','Admin\Admincontroller@changepas');
Route::put('/admin/{id}/changepas','Admin\Admincontroller@actionchangepas');
Route::post('admin/cari','Admin\Admincontroller@caridata');
//============================================setting
Route::get('/setting','Setting\Settingcontroller@index');
Route::put('/setting/{id}','Setting\Settingcontroller@update');
//============================================trf udara
Route::get('/trfudara','Trfudara\Trfudaracontroller@index');
Route::post('/trfudara','Trfudara\Trfudaracontroller@store');
Route::get('/trfudara/create','Trfudara\Trfudaracontroller@create');
Route::get('/trfudara/{id}','Trfudara\Trfudaracontroller@edit');
Route::put('/trfudara/{id}','Trfudara\Trfudaracontroller@update');
Route::get('/trfudara/{id}/delete','Trfudara\Trfudaracontroller@destroy');
//==============================================trf darat
Route::get('/trfdarat','Trfdarat\Trf_daratcontroller@index');
Route::post('/trfdarat','Trfdarat\Trf_daratcontroller@store');
Route::get('/trfdarat/create','Trfdarat\Trf_daratcontroller@create');
Route::get('/trfdarat/{id}/edit','Trfdarat\Trf_daratcontroller@edit');
Route::put('/trfdarat/{id}','Trfdarat\Trf_daratcontroller@update');
Route::get('/trfdarat/{id}/delete','Trfdarat\Trf_daratcontroller@destroy');

//------------------------export import
Route::get('/trfdarat/importexcel','Trfdarat\Trf_daratcontroller@importexcel');
Route::post('/trfdarat/prosesimportexcel','Trfdarat\Trf_daratcontroller@prosesimportexcel');
Route::get('/trfdarat/download','Trfdarat\Trf_daratcontroller@downloadtemplate');
Route::get('/trfdarat/exporttrfdarat','Trfdarat\Trf_daratcontroller@exsportexcel');

Route::post('trfdarat/cari','Trfdarat\Trf_daratcontroller@caridata');

//===============================================trf laut
Route::get('/trflaut','Trf_laut\Trf_lautcontroller@index');
Route::post('/trflaut','Trf_laut\Trf_lautcontroller@store');
Route::get('/trflaut/create','Trf_laut\Trf_lautcontroller@create');
Route::get('/trflaut/{id}/edit','Trf_laut\Trf_lautcontroller@edit');
Route::put('/trflaut/{id}','Trf_laut\Trf_lautcontroller@update');
Route::get('/trflaut/{id}/delete','Trf_laut\Trf_lautcontroller@destroy');

//------------------------export import
Route::get('/trflaut/importexcel','Trf_laut\Trf_lautcontroller@importexcel');
Route::post('/trflaut/prosesimportexcel','Trf_laut\Trf_lautcontroller@prosesimportexcel');
Route::get('/trflaut/download','Trf_laut\Trf_lautcontroller@downloadtemplate');

Route::post('trflaut/cari','Trf_laut\Trf_lautcontroller@caridata');

//===============================================vendor
Route::get('/vendor','Vendor\Vendorcontroller@index');
Route::post('/vendor','Vendor\Vendorcontroller@store');
Route::get('/vendor/create','Vendor\Vendorcontroller@create');
Route::get('/vendor/{id}','Vendor\Vendorcontroller@edit');
Route::put('/vendor/{id}','Vendor\Vendorcontroller@update');
Route::get('/vendor/{id}/delete','Vendor\Vendorcontroller@destroy');
//==============================================================Login
Route::get('/login','Login\Logincontroller@index');
Route::post('/login/masuk','Login\Logincontroller@masuk');
Route::get('/login/logout','Login\Logincontroller@logout');
