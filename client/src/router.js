import Vue from "vue"
import VueRouter from "vue-router"

import Login from "./components/Login/loginPage.vue"
import Register from "./components/Login/registerPage.vue"
import WelcomePage from "./components/WelcomePage/welcomePage.vue"
import addNews from "./components/AddData/addNews.vue"
import addArticle from "./components/AddData/addArticle.vue"
import addProduct from "./components/AddData/addProduct.vue"
import addVideos_Room from "./components/AddData/addVideos/addVideos_Room.vue"
import AboutMember from "./components/AboutMember/aboutmember.vue"
import News from "./components/News_Activities/news_activities.vue"
import Articles from "./components/Articles/articles.vue"
import TrainingCourses from "./components/Training_Courses/training_courses.vue"
import Books from "./components/Books/books.vue"
import Contact from "./components/Contact/contact.vue"
import thisNews from './components/News_Activities/news_activity.vue';
import thisArticle from './components/Articles/article.vue';
import product from './components/Product/product.vue';
import VideosRoom from './components/Videos_Room/listRooms.vue';
Vue.use(VueRouter)

export const router = new VueRouter({
    routes : [
        { path : "/",component : WelcomePage },
        { path : "/login",component : Login },
        { path : "/register",component : Register },
        { path : "/addnews",component : addNews },
        { path : "/addarticle",component : addArticle },
        { path : "/addproduct",component : addProduct },
        { path : "/addvideosandroom",component : addVideos_Room },

        // start router in navbar
        { path : "/aboutmember",component : AboutMember },
        { path : "/newsandactivities",component : News },
        { path : "/articles",component : Articles },
        { path : "/training_courses",component : TrainingCourses },
        { path : "/books",component : Books },
        { path : "/contact",component : Contact },
        // end router in navbar
        { path : "/newsandactivity/:NewsID",name:"newsandactivity",component : thisNews },
        { path : "/article/:ArticleID",name:"article",component : thisArticle },

        { path : "/product/:ProductID",name:"product",component : product },

        { path : "/videosroom",component : VideosRoom },

        
        
        
        



        

        { path : "*", redirect : "/" }
    ],
    mode : "history",
    scrollBehavior (to, from, savedPosition) {
        return { x: 0, y: 0 };
    }
})