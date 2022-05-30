import { createRouter, createWebHistory } from 'vue-router'
import Layout from '../layout/Layout.vue'
import UserLayout from "@/layout/UserLayout";

const routes = [
  {
    path: '/man',
    name: 'Layout',
    component: Layout,
    redirect:"/man/user",
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
    path: '/',
    name: 'UserLayout',
    component: UserLayout,
    redirect:"/index",
    children: [{
      path: 'index',
      name: 'Index',
      component: () => import("@/views/Index")
    }, {
      path: '/refitcase',
      name: 'RefitCase',
      component: () => import("@/views/RefitCase")
    }, {
      path: '/refitculture',
      name: 'RefitCulture',
      component: () => import("@/views/RefitCulture")
    }, {
      path: '/refitsell',
      name: 'RefitSell',
      component: () => import("@/views/RefitSell")
    }, {
      path: '/carnews',
      name: 'CarNews',
      component: () => import("@/views/CarNews")
    }, {
      path: '/carsearch',
      name: 'CarSearch',
      component: () => import("@/views/CarSearch")
    }
    ]
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
