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
import GalleryList from './view/Gallery/gallery_list.vue';
import Gallery from './view/Gallery/gallery.vue';
import Academic_Articles from './view/Academic_Articles/academic_articles.vue';
import Academic_Article from './view/Academic_Articles/academic_article.vue';
import Online_jJurnals from './view/Online_Journal/online_journals.vue';
import Online_Journal from './view/Online_Journal/online_journal.vue';



import My_Cart from './view/Shopping/my_cart.vue';
import My_Order from './view/Shopping/my_order.vue';
import My_Order_History from './view/Shopping/my_order_history.vue';
import Order from './view/Shopping/order.vue';
import Payment from './view/Shopping/payment.vue';
// admin page
import admin from "./view/Admin/AdminPage.vue"
import admin_News from "./view/Admin/News_Activities/news_activities.vue"
import admin_Article from "./view/Admin/Articles/articles.vue"
import admin_Product from "./view/Admin/Product/products.vue"
import admin_ListRooms from "./view/Admin/Videos_Room/listRooms.vue"
import admin_ListVideos from "./view/Admin/Videos_Room/listVideos.vue"

import admin_ListOrder from "./view/Admin/Shopping/list_order.vue"
import check_delivery from "./view/Admin/Shopping/list_order_check_delivery.vue" 
import admin_Order from "./view/Admin/Shopping/order.vue" // detail order for check

import admin_Gallery from "./view/Admin/Gallery/gallery_list.vue"
import admin_Academic_Articles from "./view/Admin/Academic_Articles/academic_articles.vue"
import admin_Online_Journal from "./view/Admin/Online_Journal/online_journals.vue"
import admin_Research from "./view/Admin/Research/researchs.vue"

import admin_member_list from "./view/Admin/Manage_Members/member_list.vue"

// start insert page
import addNews from "./view/Admin/News_Activities/news_activity_insert.vue"
import addArticle from "./view/Admin/Articles/article_insert.vue"
import addProduct from "./view/Admin/Product/product_insert.vue"
import addRoom from "./view/Admin/Videos_Room/videos_videoroom_insert/Room_insert.vue"
import addVideos from "./view/Admin/Videos_Room/videos_videoroom_insert/Videos_insert.vue"
import addGallery from "./view/Admin/Gallery/gallery_insert.vue"
import addAcademicArticle from "./view/Admin/Academic_Articles/academic_article_insert.vue"
import addOnline_Journal from "./view/Admin/Online_Journal/online_journal_insert.vue"
import addResearch from "./view/Admin/Research/research_insert.vue"

// end insert page
// start edit page
import EditNewsandActivity from './view/Admin/News_Activities/news_activity_edit.vue';
import EditArticle from './view/Admin/Articles/article_edit.vue';
import EditProduct from './view/Admin/Product/product_edit.vue';
import EditVideo_room from './view/Admin/Videos_Room/videos_vodeoroom_edit/Room_edit.vue';
import EditVideo from './view/Admin/Videos_Room/videos_vodeoroom_edit/Videos_edit.vue';
import EditGallery from './view/Admin/Gallery/gallery_edit.vue';
import EditAcademicArticle from './view/Admin/Academic_Articles/academic_article_edit.vue';
import EditOnline_Journal from './view/Admin/Online_Journal/online_journal_edit.vue';
import EditResearch from "./view/Admin/Research/research_edit.vue"


import admin_member_edit from "./view/Admin/Manage_Members/member_edit.vue"

// end edit page

//profile
import Profile from './view/Profile/profile.vue';
import EditProfile from './view/Profile/profile_edit.vue';

//test01
import Test01 from './zero_test_code/test01.vue';
import Test02 from './zero_test_code/test02.vue';

Vue.use(VueRouter)

export const router = new VueRouter({
    routes : [
        { path : "/",component : WelcomePage },
        { path : "/login",component : Login },
        { path : "/register",component : Register },

        // start router in navbar
        { path : "/aboutmember",component : AboutMember },
        { path : "/newsandactivities/:Page",name : 'newsandactivities',component : News },
        { path : "/articles/:Page",name : 'articles',component : Articles },
        { path : "/training_courses/:Page", name : 'training_courses' ,component : TrainingCourses },
        { path : "/books/:Page", name : 'books' ,component : Books },
        { path : "/contact",component : Contact },

        { path : "/my_cart",component : My_Cart },
        { path : "/my_order",component : My_Order },
        { path : "/my_order_history",component : My_Order_History },
        { path : "/order/:CodeOrder",name:"order",component : Order },
        { path : "/payment/:CodeOrder",name:"payment",component : Payment },

        // end router in navbar

        { path : "/newsandactivity/:NewsID",name:"newsandactivity",component : thisNews },
        { path : "/article/:ArticleID",name:"article",component : thisArticle },

        { path : "/productall/:Page",name:"productall",component : productall },
        { path : "/product/:ProductID",name:"product",component : product },

        { path : "/listroom/:Page",name:"listroom",component : ListRoom },
        { path : "/listvideos/:RoomID",name:"listvideos",component : ListVideos },
        { path : "/roomvideo/:VideoID",name:"roomvideo",component : RoomVideo },

        { path : "/gallerylist/:Page" ,name:"gallerylist",component : GalleryList },
        { path : "/gallery/:GalleryID",name:"gallery",component : Gallery },

        { path : "/academic_articles/:Page",name : 'academic_articles',component : Academic_Articles },
        { path : "/academic_article/:AcademicArticleID",name:"academic_article",component : Academic_Article },

        { path : "/online_journals/:Page",name:"online_journals",component : Online_jJurnals },
        { path : "/online_journal/:Online_JournalID",name:"online_journal",component : Online_Journal },


    //Admin - - - >
        { path : "/Admin",component : admin },
        
        { path : "/AdminN/:Page",name:'AdminN',component : admin_News },
        { path : "/AdminA/:Page",name:'AdminA',component : admin_Article },
        { path : "/AdminP/:Page",name:'AdminP',component : admin_Product },
        { path : "/AdminLR/:Page",name:'AdminLR',component : admin_ListRooms },
        { path : "/AdminLV/:RoomID",name:"AdminLV",component : admin_ListVideos },
        { path : "/AdminListOrder",component : admin_ListOrder },
        { path : "/AdminListOrder_check_delivery",component : check_delivery },
        { path : "/check_order/:CodeOrder",name:"check_order",component : admin_Order },
        { path : "/AdminListGallery/:Page",name:'AdminListGallery',component : admin_Gallery },
        { path : "/AdminAA/:Page",name:'AdminAA',component : admin_Academic_Articles },
        { path : "/AdminOJ/:Page",name:'AdminOJ',component : admin_Online_Journal },
        { path : "/AdminR",component : admin_Research },

        { path : "/AdminM/:Page",name:'AdminM',component : admin_member_list },


        // start insert
        { path : "/addnews",component : addNews },
        { path : "/addarticle",component : addArticle },
        { path : "/addproduct",component : addProduct },
        { path : "/addroom",component : addRoom },
        { path : "/addvideos",component : addVideos },
        { path : "/addgallery",component : addGallery },
        { path : "/add_academicarticle",component : addAcademicArticle },
        { path : "/addonline_journal",component : addOnline_Journal },
        { path : "/addresearch",component : addResearch },

        
        // stop insert

        // start edit 
        { path : "/editnewsandactivity/id=:NewsID",name:"editnewsandactivity",component : EditNewsandActivity },
        { path : "/editarticle/id=:ArticleID",name:"editarticle",component : EditArticle },
        { path : "/editproduct/id=:ProductID",name:"editproduct",component : EditProduct },
        { path : "/editvideoroom/id=:RoomID",name:"editvideoroom",component : EditVideo_room },
        { path : "/editvideo/id=:VideoID",name:"editvideo",component : EditVideo },
        { path : "/editgallery/id=:GalleryID",name:"editgallery",component : EditGallery },
        { path : "/editacademicarticle/id=:AcademicArticleID",name:"editacademicarticle",component : EditAcademicArticle },
        { path : "/editonline_journal/id=:Online_JournalID",name:"editonline_journal",component : EditOnline_Journal },
        { path : "/editresearch/id=:ResearchID",name:"editresearch",component : EditResearch },

        { path : "/editmember_by_admin/id=:MemberID",name:"editmember_by_admin",component : admin_member_edit },
        
        // stop edit
        
        // start profile
        { path : "/myProfile",component : Profile },
        { path : "/editprofile",component : EditProfile },

        // end profile
        



        //test01
        { path : "/test01",component : Test01 },
        { path : "/test02/:TestID",name:"test02",component : Test02 },

        { path : "*", redirect : "/" }
    ],
    mode : "history",
    scrollBehavior (to, from, savedPosition) {
        return { x: 0, y: 0 };
    }
})