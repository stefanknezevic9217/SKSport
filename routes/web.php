<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\ShoeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::get('/',[FrontController::class,"index"])->name('home');

Route::get('/doc',[FrontController::class,"doc"])->name('doc');
Route::get('/author',[FrontController::class,"author"])->name('author');
Route::get('/sitemap',[FrontController::class,"stemap"])->name('sitemap');

Route::get('/shoes',[ShoeController::class,"index"])->name('shoes');
Route::get('/shoe/{id}',[ShoeController::class,"show"])->name('shoe');
Route::get('/registration',[FrontController::class,"registration"])->name('registration');
Route::get('/contact',[FrontController::class,"contact"])->name('contact');
Route::get('/about',[FrontController::class,"about"])->name('about');
Route::post("/registration",[UserController::class,"store"])->name("store-user");
Route::post("/login",[UserController::class,"login"])->name("login");

Route::get("/shoes/filter",[ShoeController::class,"filter"])->name("filter");

Route::get('/error',[FrontController::class,"error"])->name('error');



Route::middleware(['logg'])->group(function() {
    Route::post("/logout",[UserController::class,"logout"])->name("logout");
    Route::get("/cart",[CartController::class,"index"])->name("cart.index");
    Route::post("/cart/add",[CartController::class,"add"])->name("cart.add");
    Route::get("/cart/price",[CartController::class, "priceResult"])->name("cart.price");
    Route::post("/cart/quantity",[CartController::class, "updateQuantity"])->name("cart.quantity");
    Route::post("/order/add",[OrderController::class,"add"])->name("order.add");
});
Route::middleware(['admin'])->group(function() {
    Route::get('/admin/order',[AdminController::class,"order"])->name('admin.order');
    Route::get('/admin/shoes',[AdminController::class,"shoes"])->name('admin.shoes');
    Route::get('/admin/show',[AdminController::class,"index"])->name('admin.show');
    Route::post('/admin/delete',[AdminController::class,"delete"])->name('admin.delete');
});







