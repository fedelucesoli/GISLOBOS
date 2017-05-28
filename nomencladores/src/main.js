import Vue from 'vue'
import App from './App.vue'
import Formulario from './components/Formulario.vue'
import Mapa from './components/Mapa.vue'



Vue.component('formulario', Formulario);
Vue.component('mapa', Mapa);



new Vue({
  el: '#app',
  // render: h => h(App)
})
