import { createRouter, createWebHistory } from 'vue-router'
import Layout from '../layout/Layout.vue'

const routes = [
  {
    path: '/',
    name: 'Layout',
    component: Layout,
    redirect:"/login",
    children:[{
      path: 'user',
      name: 'User',
      component: () => import("@/views/User")
    }, {
      path: '/book',
      name: 'Book',
      component: () => import("@/views/Book")
    }, {
      path: '/person',
      name: 'Person',
      component: () => import("@/views/Person")
    }, {
      path: '/brandman',
      name: 'BrandMan',
      component: () => import("@/views/BrandMan")
    }
    ]
  }, {
    path: '/login',
    name: 'Login',
    component: () => import("@/views/Login")
  }, {
    path: '/register',
    name: 'Register',
    component: () => import("@/views/Register")
  }, {
    path: '/index',
    name: 'Index',
    component: () => import("@/views/Index")
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
