<template>
  <gmap-map
    :center="center"
    :zoom="14"
    style="width: 100%; height: 800px"
    @rightclick="rclick"
  >

  </gmap-map>
</template>

<script type="text/javascript">

import * as VueGoogleMaps from 'vue2-google-maps';
import Vue from 'vue';

Vue.use(VueGoogleMaps, {
    load: {
      key: 'AIzaSyARNS3mh7oxFuCY3g1g_AxS12W1rU7S3sM',
      // v: 'OPTIONAL VERSION NUMBER',
      // libraries: 'places', //// If you need to use place input
    }
  });
  export default {
      data () {
        return {
          center: {lat: -35.1870349, lng: -59.0949762},
          disableDoubleClickZoom: true,
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
              ],
          methods : {
            mapClicked(mouseArgs) {
              console.log('map clicked', mouseArgs);
            },
            rclick : function mapRclicked(mouseArgs) {
              // const createdMarker = this.addMarker();
              createdMarker.position.lat = mouseArgs.latLng.lat();
              createdMarker.position.lng = mouseArgs.latLng.lng();
            },
            addMarker: function addMarker() {
              this.lastId++;
              this.markers.push({
                id: this.lastId,
                position: {
                  lat: 48.8538302,
                  lng: 2.2982161
                },
                opacity: 1,
                draggable: true,
                enabled: true,
                clicked: 0,
                rightClicked: 0,
                dragended: 0,
                ifw: true,
                ifw2text: 'This text is bad please change me :( '
              });
              return this.markers[this.markers.length - 1];
            },
          }
        }
      }
    }

</script>
<style lang="css">

</style>
