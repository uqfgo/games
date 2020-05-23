// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import Mint from 'mint-ui'
import store from './store/index'

Vue.use(Mint)

Vue.config.productionTip = false

/* eslint-disable no-new */
const vm = new Vue({
  el: '#app',
  components: { App },
  template: '<App/>',
  store
})

Vue.use({
  vm
})
