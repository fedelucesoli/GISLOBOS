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

<!--
      <div class="container">
      <nav class="navbar navbar-toggleable-md navbar-inverse bg-primary">
        <a class="navbar-brand" href="#">Nomencladores Lobos</a>
        <ul class="nav navbar-nav navbar-toggler-right">
          <li><a href="login/logout.php" style="color: white">Cerrar Sesion</a></li>
        </ul>
      </nav>
    </div>
    <br> -->
    <br>
<div class="container">

    <div class="row content">

        <div class="col-md-12">
            <div id="map" style="height: 600px;"></div>
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
