<?php
use App\Http\Controllers\UsersController;
use App\Http\Controllers\LoginController;
/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/us', 'UsersController@getAll');
$router->post('/us', 'UsersController@create');
$router->put('/us', 'UsersController@update');
$router->post('/us/delete', 'UsersController@delete');
$router->post('/login', 'LoginController@index');
