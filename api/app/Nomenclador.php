<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Nomenclador extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
      'id',
      'uid',
      'userId',
      'direccion',
      'long',
      'lat',
      'falta_cano',
      'falta_nomenclador',
      'falta_flecha',
      'mal_estado',
      'revision',
    ];
    protected $table = 'nomencladores';
}
