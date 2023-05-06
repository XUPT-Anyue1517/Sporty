import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
import zhCn from 'element-plus/es/locale/lang/zh-cn'
import CKEditor from 'ckeditor4-vue';

import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

import * as ElementPlusIconsVue from '@element-plus/icons-vue'

const app = createApp(App)
for (const [key, component] of Object.entries(ElementPlusIconsVue)) {
    app.component(key, component)
}


import 'bootstrap'
import 'jquery'


import '@/assets/css/global.css'


createApp(App).use( CKEditor ).use(store).use(router).use(ElementPlus, { locale: zhCn }).component('font-awesome-icon', FontAwesomeIcon).mount('#app')
