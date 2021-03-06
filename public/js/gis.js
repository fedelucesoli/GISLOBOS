
var map;
var marker;

function initMap() {
	map = new google.maps.Map(document.getElementById('map'), {
		center: {lat: -35.1870349, lng: -59.0949762},
		zoom: 14,
		disableDefaultUI: true,
		styles: [
					{
						featureType: 'poi.business',
						stylers: [{visibility: 'off'}]
					},
					{
						featureType: 'transit',
						elementType: 'labels.icon',
						stylers: [{visibility: 'off'}]
					}
				]
	});

	var geocoder = new google.maps.Geocoder();

	var markers = map.data.loadGeoJson('http://localhost:8000/nomenclador');

	map.data.setStyle(function(feature) {
		var clasificacion = feature.getProperty;
		return {
			// draggable: true,
			icon: getCircle(clasificacion)
		};
	});

	map.addListener('dblclick', function(e) {
          placeMarker(e.latLng, map);
          llenarFormulario(e.latLng);
          geocodeLatLng(geocoder, map,  e.latLng);
        });

	markers.addListener('click', function(e) {
		 // document.getElementById('id').value = event.feature.getProperty('id');
		 // document.getElementById('direccion').value = event.feature.getProperty('direccion');
		 // document.getElementById('latitud').value = event.feature.getGeometry().get().lat();
		 // document.getElementById('longitud').value = event.feature.getGeometry().get().lng();
		//  infowindow.open(marker, this);
			console.log('click');
		});

	var infowindow = new google.maps.InfoWindow({
    content: 'FEDE'
  });

}

function getCircle(clasificacion) {
	return {
		path: google.maps.SymbolPath.CIRCLE,
		fillColor: 'red',
		strokeWeight: 0,
		//colorMarker(),
		fillOpacity: 1,
		scale: 5,
	};
}

function placeMarker(latLng, map) {
			 marker = new google.maps.Marker({
				 position: latLng,
				 map: map,
				 draggable: true,
				 icon: {
						path: google.maps.SymbolPath.CIRCLE,
						scale: 5,
					},
			 });

}

function llenarFormulario(latLng){
	$('#longitud').val(latLng.lng());
	$('#latitud').val(latLng.lat());
}

function geocodeLatLng(geocoder, map, latLng) {
	// http://www.geonames.org/ <GEONAMES> <CON> INTERSECCIONES </CON> </GEONAMES>
	var latlng = latLng;

	geocoder.geocode({'location': latlng}, function(results, status) {
		if (status === 'OK') {
			if (results[1]) {
				$('#direccion').val(results[0].address_components[1].long_name +' ' + results[0].address_components[0].long_name);
			} else {
				window.alert('No results found');
			}
		} else {
			window.alert('Geocoder failed due to: ' + status);
		}
	});
}
