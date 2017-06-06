<?php

namespace App\Http\Controllers;

use App\Nomenclador;
use Illuminate\Http\Request;

class NomencladorController extends Controller
{

    public function __construct()
    {
        //
    }

    public function createNomenclador(Request $request){
      $nomenclador = new Nomenclador;
      // $nomenclador->direccion = $request->input('direccion');
      // $nomenclador->userId = $request->userId;
      $nomenclador->direccion = $request->input('direccion');
      $nomenclador->long = $request->input('long');
      $nomenclador->lat = $request->input('lat');
      $nomenclador->falta_cano = $request->input('falta_cano');
      $nomenclador->falta_nomenclador = $request->input('falta_nomenclador');
      $nomenclador->falta_flecha = $request->input('falta_flecha');
      $nomenclador->mal_estado = $request->input('mal_estado');
      $nomenclador->revision = $request->input('revision');

      $nomenclador->save();

      return response()->json($nomenclador);
    }

    public function updateNomenclador(Request $request, $id){

    	$nomenclador  = Nomenclador::find($id);
    	// $nomenclador->make = $request->input('make');
    	// $nomenclador->model = $request->input('model');
    	// $nomenclador->year = $request->input('year');
    	$nomenclador->save();

    	return response()->json($nomenclador);
	}

	public function deleteNomenclador($id){
    	$nomenclador  = Nomenclador::find($id);
    	$nomenclador->delete();

    	return response()->json('Removed successfully.');
	}

public function fede(){
  return 'FEDEEEE';
}

	public function index(){

    	$nomencladores  = Nomenclador::all();
      $geojson = array(
         'type'      => 'FeatureCollection',
         'features'  => array()
      );
      foreach ($nomencladores as $key) {
        $feature = array(
          'type' => 'Feature',
          'geometry' => array(
            'type' => 'Point',
            'coordinates' => array($key->long,$key->lat)
          ),
          'properties' => array(
            'id' => $key->id,
            'direccion' => $key->direccion,
            'falta_cano' => $key->falta_cano,
            'falta_nomenclador' => $key->falta_nomenclador,
            'falta_flecha' => $key->falta_flecha,
            'mal_estado' => $key->mal_estado
          )
        );
        array_push($geojson['features'], $feature);
      }
      $geojson = json_encode($geojson, JSON_NUMERIC_CHECK);

      return response($geojson)
            ->header('Content-Type', 'application/json');
	}
}
