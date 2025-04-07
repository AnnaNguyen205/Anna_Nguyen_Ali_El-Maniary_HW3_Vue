<?php

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


//matches localhost:8888/lumen/public/
$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/games', 'GameController@getAll');
$router->get('/games/{id}', 'GameController@getOne');
$router->post('/games/add', 'GameController@save');
$router->post('/games/edit/{id}', 'GameController@update');
$router->delete('/games/delete/{id}', 'GameController@delete');















