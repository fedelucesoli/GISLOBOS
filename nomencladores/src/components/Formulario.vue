<template lang="html">

  <div>
      <div class="panel panel-default">
          <div class="panel-heading">
              <h3 class="panel-title text-center">Agregar marcador
              <span class="glyphicon glyphicon-map-marker"></span></h3>
          </div>
          <div class="panel-body">

              <form name ="addForm" id="form" novalidate>
                  <!-- Text Boxes and Other User Inputs. Note ng-model binds the values to Angular $scope -->
                  <hr>
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" value="1" name="falta_cano">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Falta caño</span>
                  </label>
                  <hr>
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" value="1" name="falta_nomenclador">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Falta Nomenclador</span>
                  </label>
                  <hr>
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" value="1" name="falta_flecha">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Falta Flecha</span>
                  </label>
                  <hr>
                  <label class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" value="1" name="mal_estado">
                    <span class="custom-control-indicator"></span>
                    <span class="custom-control-description">Mal Estado</span>
                  </label>
                  <hr><br>
                  <div class="form-group">
                      <label for="direccion">Direccion <span class="badge">Cargando</span></label>
                      <input type="text" class="form-control" id="direccion" placeholder="Salgado 40" name="direccion" required>
                  </div>
                  <div class="form-group">
                      <label for="longitud">Longitud <span class="badge">Cargando</span></label>
                      <input type="text" class="form-control" id="longitud" placeholder="" name="longitud" readonly>
                  </div>
                  <div class="form-group">

                      <label for="latitud">Latitud <span class="badge">Cargando</span></label>
                      <input type="text" class="form-control" id="latitud" placeholder="" name="latitud" readonly>
                  </div>


                  <!-- Submit button. Note that its tied to createUser() function from addCtrl. Also note ng-disabled logic which prevents early submits.  -->
                  <button type="submit" class="btn btn-danger btn-block">Enviar</button>
              </form>
          </div>
      </div>
  </div>

</template>

<script>

export default {
  name: 'Formulario',
  data(){
    return{
      ninjas: ['fede', 'mario', 'armando']
    }
  }
}
</script>

<style lang="css">

</style>
