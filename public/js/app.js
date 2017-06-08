$( document ).ready(function() {


  $('#form').submit(function(e){

    e.preventDefault();
    var button = $('#form input[type="submit"]'),
        falta_cano = ($('#form input[name="falta_cano"]').is(':checked') === true)? true : false,
        falta_nomenclador = ($('#form input[name="falta_nomenclador"]').is(':checked') === true)? true : false,
        falta_flecha = ($('#form input[name="falta_flecha"]').is(':checked') === true)? true : false,
        mal_estado = ($('#form input[name="mal_estado"]').is(':checked') === true)? true : false;


    $('#form input[type="submit"]').val('Guardando datos');

    var form = new FormData();
    form.append("id", "1");
    form.append("userId", "1");
    form.append("direccion", $('#form input[name="direccion"]').val());
    form.append("long", $('#form input[name="longitud"]').val());
    form.append("lat", $('#form input[name="latitud"]').val());


    form.append("falta_cano", $('#form input[name="falta_cano"]').is(':checked'));
    form.append("falta_nomenclador", $('#form input[name="falta_nomenclador"]').is(':checked'));
    form.append("falta_flecha", $('#form input[name="falta_flecha"]').is(':checked'));
    form.append("mal_estado", $('#form input[name="mal_estado"]').is(':checked'));


    form.append("revision", $('#form input[name="revision"]').val());

    var settings = {
      "async": true,
      "crossDomain": true,
      // "url": "http://localhost:8000/GISLOBOS/api/public/nomenclador",
      "url": "http://localhost:8000/nomenclador",
      "method": "POST",
      "headers": {
        "cache-control": "no-cache",
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


  // $('#deleteNomenclador').click(function(e){
  //   e.preventDefault();
  //   console.log('DELETE');
  // });
});
