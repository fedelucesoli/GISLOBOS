<?php require "login/loginheader.php"; ?>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Nomencladores</title>
    <meta name="description" content="Plataforma para geolocalizar nomencladores de la ciudad de Lobos">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css"/>
    <link rel="stylesheet" href="style.css"/>
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/app.js"></script>

</head>
<style>
      #map {
        height: 100%;
      }
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }


    </style>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAfblT4FmCzVOJNslU2HoYgmUv5W3Fc0nQ&callback=initMap">
        </script>


      <script src="js/gis2.js" type="text/javascript" charset="utf-8"></script>

    <!-- <script src="js/gis.js" type="text/javascript" charset="utf-8"></script> -->

<body>


      <div class="container">
      <nav class="navbar navbar-toggleable-md navbar-inverse bg-primary">
        <a class="navbar-brand" href="#">Nomencladores Lobos</a>
        <ul class="nav navbar-nav navbar-toggler-right">
          <li><a href="login/logout.php" style="color: white">Cerrar Sesion</a></li>
        </ul>
      </nav>
    </div>
    <br>
<div class="container">

    <div class="row content">

        <div class="col-md-7">
            <div id="map" style="height: 600px;"></div>
        </div>

        <div class="col-md-5">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h2 class="panel-title text-center">Agregar marcador  <span class="glyphicon glyphicon-map-marker"></span></h2>
                </div>
                <!-- Panel Body -->
                <div class="panel-body">

                    <form name ="addForm" id="form" novalidate>
                        <!-- Text Boxes and Other User Inputs. Note ng-model binds the values to Angular $scope -->
                        <input type="hidden" class="form-control" id="id" placeholder="" name="id">

                        <hr>
                        <label class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" value="1" id="falta_cano" name="falta_cano">
                          <span class="custom-control-indicator"></span>
                          <span class="custom-control-description">Falta caño</span>
                        </label>
                        <hr>
                        <label class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" value="1" id="falta_nomenclador" name="falta_nomenclador">
                          <span class="custom-control-indicator"></span>
                          <span class="custom-control-description">Falta Nomenclador</span>
                        </label>
                        <hr>
                        <label class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" value="1" id="falta_flecha" name="falta_flecha">
                          <span class="custom-control-indicator"></span>
                          <span class="custom-control-description">Falta Flecha</span>
                        </label>
                        <hr>
                        <label class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" value="1" id="mal_estado" name="mal_estado">
                          <span class="custom-control-indicator"></span>
                          <span class="custom-control-description">Mal Estado</span>
                        </label>
                        <hr><br>
                        <div class="form-group">
                            <label for="direccion">Direccion <span class="badge">Cargando</span></label>
                            <input type="text" class="form-control" id="direccion" placeholder="" name="direccion" required>
                        </div>
                        <div class="row">
                          <div class="col-md-6">
                            <div class="form-group">
                                <label for="longitud">Longitud <span class="badge">Cargando</span></label>
                                <input type="text" class="form-control" id="longitud" placeholder="" name="longitud" readonly>
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="form-group">
                                <label for="latitud">Latitud <span class="badge">Cargando</span></label>
                                <input type="text" class="form-control" id="latitud" placeholder="" name="latitud" readonly>
                            </div>
                          </div>

                        </div>
                        <input type="submit" class="btn btn-danger btn-block" value="Enviar">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <hr/>
    <!-- Footer -->
    <div class="footer">
        <p class="text-center">
        <span class="glyphicon glyphicon-check"></span>
        Municipio de Lobos - Secretaría de Gobierno</p>
    </div>
</div>

</body>
</html>
