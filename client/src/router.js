import Vue from "vue"
import VueRouter from "vue-router"

import Login from "./components/Login_Register/loginPage.vue"
import Register from "./components/Login_Register/registerPage.vue"
import WelcomePage from "./view/welcomePage.vue"
import addNews from "./view/News_Activities/news_activity_insert.vue"
import addArticle from "./view/Articles/article_insert.vue"
import addProduct from "./view/Product/product_insert.vue"
import addVideos_Room from "./view/Videos_Room/videos_videoroom_insert/addVideos_Room.vue"
import AboutMember from "./view/aboutmember.vue"
import News from "./view/News_Activities/news_activities.vue"
import Articles from "./view/Articles/articles.vue"
import TrainingCourses from "./view/Training_Courses/training_courses.vue"
import Books from "./view/Books/books.vue"
import Contact from "./view/contact.vue"
import thisNews from './view/News_Activities/news_activity.vue';
import thisArticle from './view/Articles/article.vue';
import productall from './view/Product/products.vue';
import product from './view/Product/product.vue';
import ListRoom from './view/Videos_Room/listRooms.vue';
import ListVideos from './view/Videos_Room/listVideos.vue';
import RoomVideo from './view/Videos_Room/roomVideo.vue';

import EditNewsandActivity from './view/News_Activities/news_activity_edit.vue';
import EditArticle from './view/Articles/article_edit.vue';


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

        { path : "/productall",component : productall },
        { path : "/product/:ProductID",name:"product",component : product },

        { path : "/listroom",component : ListRoom },
        { path : "/listvideos/:RoomID",name:"listvideos",component : ListVideos },
        { path : "/roomvideo/:VideoID",name:"roomvideo",component : RoomVideo },

        //edit data
        { path : "/editnewsandactivity/:NewsID",name:"editnewsandactivity",component : EditNewsandActivity },
        { path : "/editarticle/:ArticleID",name:"editarticle",component : EditArticle },

        
        
        
        



        

        { path : "*", redirect : "/" }
    ],
    mode : "history",
    scrollBehavior (to, from, savedPosition) {
        return { x: 0, y: 0 };
    }
})