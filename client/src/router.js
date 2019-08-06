import Vue from "vue"
import VueRouter from "vue-router"

import WelcomePage from "./components/Login/welcomePage.vue"

Vue.use(VueRouter)

export const router = new VueRouter({
    routes : [
        { path : "/",component : WelcomePage },
        { path : "/abc",component : WelcomePage },
        
        





        { path : "*", redirect : "/" }
    ],
    mode : "history"
})