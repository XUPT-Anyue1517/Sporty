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
      path: '/man/user',
      name: 'User',
      component: () => import("@/views/User")
    }, {
      path: '/man/brandman',
      name: 'BrandMan',
      component: () => import("@/views/BrandMan")
    }, {
      path: '/carblogman',
      name: 'CarBlogMan',
      component: () => import("@/views/CarBlogMan")
    }, {
      path: '/person',
      name: 'Person',
      component: () => import("@/views/Person")
    }, {
      path: '/man/brandman',
      name: 'BrandMan',
      component: () => import("@/views/BrandMan")
    }, {
      path: '/carnameman',
      name: 'CarNameMan',
      component: () => import("@/views/CarNameMan")
    }, {
      path: '/carorderman',
      name: 'CarOrderMan',
      component: () => import("@/views/CarOrderMan")
    }, {
      path: '/carstoreman',
      name: 'CarStoreMan',
      component: () => import("@/views/CarStoreMan")
    }, {
      path: '/refitblogman',
      name: 'RefitBlogMan',
      component: () => import("@/views/RefitBlogMan")
    }, {
      path: '/refitman',
      name: 'RefitMan',
      component: () => import("@/views/RefitMan")
    }, {
      path: '/refitorderman',
      name: 'RefitOrderMan',
      component: () => import("@/views/RefitOrderMan")
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
