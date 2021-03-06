<?php

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

$app->get('/', function () use ($app) {
    return $app->version();
});


$app->get('nomenclador', 'NomencladorController@index');
$app->get('estadisticas', 'NomencladorController@estadisticas');

$app->put('Nomenclador/{id}', 'NomencladorController@updateNomenclador');

$app->post('nomenclador','NomencladorController@createNomenclador');

$app->delete('nomenclador/{id}','NomencladorController@deleteNomenclador');
