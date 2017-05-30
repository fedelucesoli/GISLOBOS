var map;
function initMap() {
	map = new google.maps.Map(document.getElementById('map_canvas'), {
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

	map.data.loadGeoJson('http://localhost:8000/nomenclador');

	map.data.setStyle(function(feature) {
		var clasificacion = feature.properties;
		console.log(clasificacion);
		return {
			icon: getCircle(clasificacion)
		};
	});

}

function getCircle(clasificacion) {
	return {
		path: google.maps.SymbolPath.CIRCLE,
		fillColor: colorMarker(clasificacion),
		fillOpacity: 1,
		scale: 5,
		// scale: Math.pow(2, clasificacion) / 2,
		strokeColor: 'white',
		strokeWeight: .5
	};
}

function colorMarker (caracteristicas){
	var fillColor;
	if(caracteristicas){
		fillColor: 'red';
 }else {
	 fillColor: 'black';
 }
 return fillColor;
}

function eqfeed_callback(results) {
	map.data.addGeoJson(results);
}

function placeMarker(latLng, map) {
			 var marker = new google.maps.Marker({
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
