import Vue from "vue"
import VueRouter from "vue-router"

import Login from "./components/Login/loginPage.vue"
import Register from "./components/Login/registerPage.vue"
import WelcomePage from "./components/welcomePage/welcomePage.vue"
import addNews from "./components/AddData/addNews.vue"
import addArticle from "./components/AddData/addArticle.vue"
import addProduct from "./components/AddData/addProduct.vue"

Vue.use(VueRouter)

export const router = new VueRouter({
    routes : [
        { path : "/",component : WelcomePage },
        { path : "/login",component : Login },
        { path : "/register",component : Register },
        { path : "/addnews",component : addNews },
        { path : "/addarticle",component : addArticle },
        { path : "/addproduct",component : addProduct },
        
        
        
        





        { path : "*", redirect : "/" }
    ],
    mode : "history"
})