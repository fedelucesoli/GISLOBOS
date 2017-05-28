<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Nomencladores extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('nomencladores', function (Blueprint $table) {
          $table->increments('id');
          $table->string('uid', 36)->unique();
          $table->integer('userId')->unsigned();
          $table->string('direccion', 80);
          $table->decimal('long', 11, 7);
          $table->decimal('lat', 11, 7);
          $table->boolean('falta_cano')->default(0);
          $table->boolean('falta_nomenclador')->default(0);
          $table->boolean('falta_flecha')->default(0);
          $table->boolean('mal_estado')->default(0);
          $table->boolean('revision')->default(0);
          $table->timestamps();


      });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
