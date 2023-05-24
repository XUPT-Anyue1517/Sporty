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
      path: '/man/carleaseman',
      name: 'CarLeaseMan',
      component: () => import("@/views/CarLeaseMan")
    }, {
      path: '/man/orderman',
      name: 'OrderMan',
      component: () => import("@/views/OrderMan")
    }, {
      path: '/man/carstoreman',
      name: 'CarStoreMan',
      component: () => import("@/views/CarStoreMan")
    }, {
      path: '/man/refitcaseman',
      name: 'RefitCaseMan',
      component: () => import("@/views/RefitCaseMan")
    }, {
      path: '/man/refitman',
      name: 'RefitMan',
      component: () => import("@/views/RefitMan")
    }, {
      path: '/man/refitbrandman',
      name: 'RefitBrandMan',
      component: () => import("@/views/RefitBrandMan")
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
      path: '/blog',
      name: 'Blog',
      component: () => import("@/views/Blog")
    }, {
      path: '/writeblog',
      name: 'WriteBlog',
      component: () => import("@/views/WriteBlog")
    }, {
      path: '/carAI',
      name: 'CarAI',
      component: () => import("@/views/CarAI")
    }, {
      path: '/Refit',
      name: 'Refit',
      component: () => import("@/views/Refit")
    }, {
      path: '/carlease',
      name: 'CarLease',
      component: () => import("@/views/CarLease")
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
    }, {
      path: '/userorders',
      name: 'UserOrders',
      component: () => import("@/views/UserOrders")
    }, {
      path: '/userblogs',
      name: 'UserBlogs',
      component: () => import("@/views/UserBlogs")
    }, {
      path: '/refitpurchase',
      name: 'refitPurchase',
      component: () => import("@/views/RefitPurchase")
    }, {
      path: '/carpurchase',
      name: 'CarPurchase',
      component: () => import("@/views/CarPurchase")
    }, {
      path: '/carleasepurchase',
      name: 'CarLeasePurchase',
      component: () => import("@/views/CarLeasePurchase")
    }, {
      path: '/refitcaseessay',
      name: 'RefitCaseEssay',
      component: () => import("@/views/RefitCaseEssay")
    }, {
      path: '/refitpurchasesuccess',
      name: 'RefitPurchaseSuccess',
      component: () => import("@/views/RefitPurchaseSuccess")
    }
    ]
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
