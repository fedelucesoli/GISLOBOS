$( document ).ready(function() {


  $('#form').submit(function(e){

    e.preventDefault();
    var button = $('#form input[type="submit"]'),
        falta_cano = ($('#form input[name="falta_cano"]').is(':checked') === true)? '1' : false,
        falta_nomenclador = ($('#form input[name="falta_nomenclador"]').is(':checked') === true)? '1' : false,
        falta_flecha = ($('#form input[name="falta_flecha"]').is(':checked') === true)? '1' : false,
        mal_estado = ($('#form input[name="mal_estado"]').is(':checked') === true)? '1' : false;


    $('#form input[type="submit"]').val('Guardando datos');

    var form = new FormData();
    form.append("id", "1");
    form.append("userId", "1");
    form.append("direccion", $('#form input[name="direccion"]').val());
    form.append("long", $('#form input[name="longitud"]').val());
    form.append("lat", $('#form input[name="latitud"]').val());


    form.append("falta_cano", falta_cano);
    form.append("falta_nomenclador", falta_nomenclador);
    form.append("falta_flecha", falta_flecha);
    form.append("mal_estado", mal_estado);


    form.append("revision", $('#form input[name="revision"]').val());

    var settings = {
      "async": true,
      "crossDomain": true,
      // "url": "http://localhost:8000/GISLOBOS/api/public/nomenclador",
      "url": "http://localhost:8000/nomenclador",
      "method": "POST",
      "headers": {
        "cache-control": "no-cache",
        "postman-token": "0481fa89-a314-7fb3-feb7-6a6778240e96"
      },
      "processData": false,
      "contentType": false,
      "mimeType": "multipart/form-data",
      "data": form
    }

    $.ajax(settings).done(function (response) {
      document.getElementById("form").reset();

      $('#form input[type="submit"]').val('Datos guardados').delay(2200).val('Enviar');



    });

  });



});
