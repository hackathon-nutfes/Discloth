import Vue from 'vue'
import VueRouter from 'vue-router'
import Welcome from '../views/Welcome.vue'
import Mypage from '../views/Mypage.vue'
import Analysis from '../views/Analysis.vue'
import Display from '../views/Display.vue'
import TestImage from '../views/TestImage.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Welcome',
    component: Welcome 
  },
  {
    path: '/mypage',
    name: 'Mypage',
    component: Mypage
  },
  {
    path: '/analysis',
    name: 'Analysis',
    component: Analysis
  },
  {
    path: '/display',
    name: 'Display',
    component: Display
  },
  {
    path: '/test-image',
    name: 'TestImage',
    component: TestImage
  }

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
