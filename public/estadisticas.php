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
      <script type="text/javascript">
      $(document).ready(function() {
        $.get("http://lobos.gov.ar/nomencladores/api/public/estadisticas", function(data){
          console.log(data);
          $('#total').html(data.total);
          $('#buen_estado').html(data.buen_estado);
          $('#mal_estado').html(data.mal_estado + data.falta_cano + data.falta_nomenclador + data.falta_flecha);
          $('#falta_cano').html(data.falta_cano);
          $('#falta_nomenclador').html(data.falta_nomenclador);
          $('#falta_flecha').html(data.falta_flecha);
          // $('#mal_estado').html(data.mal_estado);

        })
      });
      </script>
<body>


      <div class="container-fluid">
      <nav class="navbar navbar-toggleable-md navbar-inverse bg-primary">
        <a class="navbar-brand" href="#">Nomencladores Lobos</a>
        <ul class="nav navbar-nav navbar-toggler-right">
          <li><a href="login/logout.php" style="color: white">Cerrar Sesion</a></li>
        </ul>
      </nav>
    </div>

<div class="container">
  <div class="row content" style="padding: 25px 0 85px;">
    <div class="col-12">
      <h1 class=" text-center">Estadisticas</h1>
      <br>
    </div>
    <div class="col-12">

        <div class="row text-center">
          <div class="col">
            <h1>
              <span class="badge badge-primary" id="total">100</span>
            </h1>
            <h5>Nomencladores cargados</h5>
          </div>

          <div class="col">
            <h1>
              <span class="badge badge-success" id="buen_estado">100</span>
            </h1>
            <h5>Nomencladores en buen estado</h5>
          </div>
          <div class="col">
            <h1>
              <span class="badge badge-danger" id="mal_estado">100</span>
            </h1>
            <h5>Nomencladores en mal estado</h5>
          </div>
        </div>

    </div>
    <div class="col">
      <br><hr><br>

    </div>
    <div class="col-12">
      <div class="row text-center">
        <div class="col">
          <button class="btn">
            Falta caño <span class="badge badge-default" id="falta_cano">100</span>
          </button>


        </div>
        <div class="col">
          <button class="btn">
            Falta nomenclador <span class="badge badge-default" id="falta_nomenclador">100</span>
          </button>


        </div>
        <div class="col">
          <button class="btn">
            Falta flecha <span class="badge badge-default" id="falta_flecha">100</span>
          </button>


        </div>
        <!-- <div class="col">
          <h1><span class="badge badge-primary" id="falta_">5 </span></h1>
          <h5>Mal estado</h5>

        </div> -->
      </div>
    </div>
  </div>
  <div class="row content">
    <div class="col">
        <div id="map" style="height: 600px;"></div>
    </div>
  </div>


<hr>
    <!-- Footer -->
    <div class="footer">
        <p class="text-center">
        <span class="glyphicon glyphicon-check"></span>
        Municipio de Lobos - Secretaría de Gobierno</p>
    </div>
</div>

</body>
</html>
