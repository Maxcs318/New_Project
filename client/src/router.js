import Vue from "vue"
import VueRouter from "vue-router"

import Login from "./components/Login_Register/loginPage.vue"
import Register from "./components/Login_Register/registerPage.vue"
import WelcomePage from "./view/welcomePage.vue"

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
// admin page
import admin from "./view/Admin/AdminPage.vue"
import admin_News from "./view/Admin/News_Activities/news_activities.vue"
import admin_Article from "./view/Admin/Articles/articles.vue"
import admin_Product from "./view/Admin/Product/products.vue"
import admin_ListRooms from "./view/Admin/Videos_Room/listRooms.vue"
import admin_ListVideos from "./view/Admin/Videos_Room/listVideos.vue"

// start insert page
import addNews from "./view/Admin/News_Activities/news_activity_insert.vue"
import addArticle from "./view/Admin/Articles/article_insert.vue"
import addProduct from "./view/Admin/Product/product_insert.vue"
import addRoom from "./view/Admin/Videos_Room/videos_videoroom_insert/Room_insert.vue"
import addVideos from "./view/Admin/Videos_Room/videos_videoroom_insert/Videos_insert.vue"
// end insert page
// start edit page
import EditNewsandActivity from './view/Admin/News_Activities/news_activity_edit.vue';
import EditArticle from './view/Admin/Articles/article_edit.vue';
import EditProduct from './view/Admin/Product/product_edit.vue';
import EditVideo_room from './view/Admin/Videos_Room/videos_vodeoroom_edit/Room_edit.vue';
import EditVideo from './view/Admin/Videos_Room/videos_vodeoroom_edit/Videos_edit.vue';
// end edit page

//profile
import Profile from './view/Profile/profile.vue';

//test01
import Test01 from './zero_test_code/test01.vue';

Vue.use(VueRouter)

export const router = new VueRouter({
    routes : [
        { path : "/",component : WelcomePage },
        { path : "/login",component : Login },
        { path : "/register",component : Register },

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

//Admin - - - >
        { path : "/Admin",component : admin },
        
        { path : "/AdminN",component : admin_News },
        { path : "/AdminA",component : admin_Article },
        { path : "/AdminP",component : admin_Product },
        { path : "/AdminLR",component : admin_ListRooms },
        { path : "/AdminLV/:RoomID",name:"AdminLV",component : admin_ListVideos },
        
        // start insert
        { path : "/addnews",component : addNews },
        { path : "/addarticle",component : addArticle },
        { path : "/addproduct",component : addProduct },
        { path : "/addroom",component : addRoom },
        { path : "/addvideos",component : addVideos },
        // stop insert

        // start edit 
        { path : "/editnewsandactivity/:NewsID",name:"editnewsandactivity",component : EditNewsandActivity },
        { path : "/editarticle/:ArticleID",name:"editarticle",component : EditArticle },
        { path : "/editproduct/:ProductID",name:"editproduct",component : EditProduct },
        { path : "/editvideoroom/:RoomID",name:"editvideoroom",component : EditVideo_room },
        { path : "/editvideo/:VideoID",name:"editvideo",component : EditVideo },
        // stop edit
        
        // start profile
        { path : "/myProfile",component : Profile },

        // end profile
        



        //test01
        { path : "/test01",component : Test01 },

        { path : "*", redirect : "/" }
    ],
    mode : "history",
    scrollBehavior (to, from, savedPosition) {
        return { x: 0, y: 0 };
    }
})