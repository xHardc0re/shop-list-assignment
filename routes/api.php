<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ShopController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/register', [RegisterController::class, 'register']);
Route::post('/login', [LoginController::class, 'login']);
Route::middleware('auth:sanctum')->post('/categories', [CategoryController::class, 'create']);
Route::middleware('auth:sanctum')->post('/shops', [ShopController::class, 'create']);
Route::middleware('auth:sanctum')->put('/shops/{shop}', [ShopController::class, 'update']);
Route::middleware('auth:sanctum')->delete('/shops/{shop}', [ShopController::class, 'destroy']);
Route::get('/shops', [ShopController::class, 'index']);
