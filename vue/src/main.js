import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import zhCn from 'element-plus/es/locale/lang/zh-cn'

import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'




import 'bootstrap'
import 'jquery'


import '@/assets/css/global.css'


createApp(App).use(store).use(router).use(ElementPlus, { locale: zhCn }).component('font-awesome-icon', FontAwesomeIcon).mount('#app')
