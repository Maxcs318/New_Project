import Vue from "vue"
import VueRouter from "vue-router"

import Members from "./components/ListMembers/members"
import EditMember from "./components/EditMember"

import Login from "./components/Login/loginPage.vue"
import Register from "./components/Login/registerPage.vue"
import WelcomePage from "./components/Login/welcomePage.vue"

Vue.use(VueRouter)

export const router = new VueRouter({
    routes : [
        { path : "/",component : WelcomePage },
        { path : "/login",component : Login },
        { path : "/register",component : Register },
        { path : "/member",component : Members },
        { name : "edit-paramiter", path : "/editmem",component : EditMember },
        
        
        





        { path : "*", redirect : "/" }
    ],
    mode : "history"
})