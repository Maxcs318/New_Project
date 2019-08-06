import Vue from 'vue'
import App from './App.vue'
import { router } from "./router";
import store from "./store"
import VueSession from 'vue-session'

import BootstrapVue from 'bootstrap-vue'
Vue.use(BootstrapVue)
Vue.use(VueSession)


new Vue({
  el: '#app',
  render: h => h(App),
  router,
  store,
})
