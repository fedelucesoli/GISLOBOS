function initMap() {
	var map = new google.maps.Map(document.getElementById('map'), {
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
	map.data.loadGeoJson('http://localhost:8000/nomenclador');
	map.data.setStyle(function(feature) {
	    var color = feature.getProperty('color');
	    return {
	      icon: {
					path: google.maps.SymbolPath.CIRCLE,
					fillColor: color,
					strokeWeight: 0,
					fillOpacity: 1,
					scale: 5,
				},

	    };
	});

	map.addListener('click', function(e) {
					placeMarker(e.latLng, map);
					llenarFormulario(e.latLng);
					geocodeLatLng(geocoder, map,  e.latLng);
				});

	map.data.addListener('click', function(e) {
					console.log('click');
				});

};


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
			 marker.addListener('dragend', function(e){llenarFormulario(e.latLng)});


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
