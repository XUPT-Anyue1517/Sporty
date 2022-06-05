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
      component: () => import("@/views/UserMan")
    }, {
      path: '/man/brandman',
      name: 'BrandMan',
      component: () => import("@/views/BrandMan")
    }, {
      path: '/man/carblogman',
      name: 'CarBlogMan',
      component: () => import("@/views/CarBlogMan")
    }, {
      path: '/man/person',
      name: 'Person',
      component: () => import("@/views/Person")
    }, {
      path: '/man/brandman',
      name: 'BrandMan',
      component: () => import("@/views/BrandMan")
    }, {
      path: '/man/carman',
      name: 'CarMan',
      component: () => import("@/views/CarMan")
    }, {
      path: '/man/carorderman',
      name: 'CarOrderMan',
      component: () => import("@/views/CarOrderMan")
    }, {
      path: '/man/carstoreman',
      name: 'CarStoreMan',
      component: () => import("@/views/CarStoreMan")
    }, {
      path: '/man/refitblogman',
      name: 'RefitBlogMan',
      component: () => import("@/views/RefitBlogMan")
    }, {
      path: '/man/refitman',
      name: 'RefitMan',
      component: () => import("@/views/RefitMan")
    }, {
      path: '/man/refitorderman',
      name: 'RefitOrderMan',
      component: () => import("@/views/RefitOrderMan")
    }
    ]
  }, {
    path: '/man/login',
    name: 'Login',
    component: () => import("@/views/Login")
  }, {
    path: '/userlogin',
    name: 'UserLogin',
    component: () => import("@/views/UserLogin")
  }, {
    path: '/userloginphone',
    name: 'UserLoginPhone',
    component: () => import("@/views/UserLoginPhone")
  }, {
    path: '/register',
    name: 'Register',
    component: () => import("@/views/Register")
  }, {
    path: '/userregister',
    name: 'UserRegister',
    component: () => import("@/views/UserRegister")
  }, {
    path: '/',
    name: 'UserLayout',
    component: UserLayout,
    redirect:"/index",
    children: [{
      path: 'indexsy',
      name: 'IndexSy',
      component: () => import("@/views/IndexSy")
    },{
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
      path: '/refitsearch',
      name: 'RefitSearch',
      component: () => import("@/views/RefitSearch")
    }, {
      path: '/carnews',
      name: 'CarNews',
      component: () => import("@/views/CarNews")
    }, {
      path: '/brandsearch',
      name: 'BrandSearch',
      component: () => import("@/views/BrandSearch")
    }, {
      path: '/carsearch',
      name: 'CarSearch',
      component: () => import("@/views/CarSearch")
    }, {
      path: '/userperson',
      name: 'UserPerson',
      component: () => import("@/views/UserPerson")
    }
    ]
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
