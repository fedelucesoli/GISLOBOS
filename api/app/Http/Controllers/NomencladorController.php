<?php

namespace App\Http\Controllers;

use App\Nomenclador;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;

class NomencladorController extends Controller
{

    public function __construct()
    {
        //
    }

    public function createNomenclador(Request $request){

      $color ="";
     if($request->input('falta_cano') === 'true'){
       $color = "red";
     }
     if($request->input('falta_nomenclador') === 'true'){
       $color = "blue";
     }
     if($request->input('falta_flecha') === 'true'){
       $color = "yellow";
     }
     if($request->input('mal_estado') === 'true'){
       $color = "black";
     }
     if(empty($color)){
       $color = "green";
     }
     $fecha = date_create();
     $uid = date_timestamp_get($fecha);

      $nomenclador = new Nomenclador;
      $nomenclador->uid = $uid;
      $nomenclador->direccion = $request->input('direccion');
      $nomenclador->long = $request->input('long');
      $nomenclador->lat = $request->input('lat');
      $nomenclador->falta_cano = ($request->input('falta_cano')=== 'true') ? 1 : 0;
      $nomenclador->falta_nomenclador = ($request->input('falta_nomenclador')=== 'true') ? 1 : 0;
      $nomenclador->falta_flecha = ($request->input('falta_flecha')=== 'true') ? 1 : 0;
      $nomenclador->mal_estado = ($request->input('mal_estado')=== 'true') ? 1 : 0;
      $nomenclador->revision = $request->input('revision');
      $nomenclador->color = $color;

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
    	$nomenclador = Nomenclador::where('uid', $id);
    	$nomenclador->delete();

    	return response()->json('Removed successfully.');
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
            'uid' => $key->uid,
            'direccion' => $key->direccion,
            'falta_cano' => $key->falta_cano,
            'falta_nomenclador' => $key->falta_nomenclador,
            'falta_flecha' => $key->falta_flecha,
            'mal_estado' => $key->mal_estado,
            'color' => $key->color,
          )
        );
        array_push($geojson['features'], $feature);
      }
      $geojson = json_encode($geojson, JSON_NUMERIC_CHECK);

      return response($geojson)
            ->header('Content-Type', 'application/json');
	}
  public function estadisticas(){
      $nomencladores  = Nomenclador::all();

      $data['total'] = $nomencladores->count();
      $data['buen_estado'] = $nomencladores->where('color', 'green')->count();
      $data['falta_cano'] =  $nomencladores->where('falta_cano', true)->count();
      $data['falta_flecha'] =  $nomencladores->where('falta_flecha', true)->count();
      $data['falta_nomenclador'] =  $nomencladores->where('falta_nomenclador', true)->count();
      $data['mal_estado'] =  $nomencladores->where('color', 'black')->count();
      // $data['total'] = Nomenclador::all();
      // $data['buen_estado'] = Nomenclador::all();
      // $data['mal_estado'] = Nomenclador::all();
      // $data['falta_cano'] =  Nomenclador::where('falta_cano', true)->get();
      // $data['falta_flecha'] =  Nomenclador::where('falta_flecha', true)->get();
      // $data['falta_nomenclador'] =  Nomenclador::where('falta_nomenclador', true)->get();
      // $data['mal_estado'] =  Nomenclador::where('mal_estado', true)->get();
      return response($data);
  }
}
