import Vue from "vue"
import Vuex from "vuex"
import axios from "axios"

Vue.use(Vuex)

const store = new Vuex.Store({
    state : {
        statusPage:'',
        news:[],
        article:[],
        product:[],
        members : [],
        the_user:'',
        log_on: localStorage.getItem('The_User') || null,
        videos:[],
        video_room:[]
    },
    mutations : {
        initMembers(state,members){
            state.members = members
        },
        NewsAll(state,news){
            state.news = news
        },
        ArticleAll(state,article){
            state.article = article
        },
        ProductAll(state,product){
            state.product = product
        },
        LoadingPage(state,statusP){
            state.statusPage = statusP
        },
        Logining_in(state,now_user){
            state.log_on = now_user
        },
        Log_Out(state){
            state.log_on = null
            state.the_user = ''
            state.members = ''
        },
        Log_On(state,user){
            state.the_user = user
        },
        addMember(state,member){
            state.members.push(member)
        },
        Add_News(state,Newnews){
            state.news.push(Newnews)
        },
        Add_Article(state,Newarticle){
            state.article.push(Newarticle)
        },
        Add_Product(state,Newproduct){
            state.product.push(Newproduct)
        },
        VideosAll(state,videosall){
            state.videos = videosall
        },
        Video_Room(state,video_room){
            state.video_room = video_room
        },
        CreateRoom(state,NRoom){
            state.video_room.push(NRoom)
        },
        AddVideos(state,NVideos){
            for(var i=0; i<NVideos.length; i++){
                state.videos.push(NVideos[i])
            }
        },
        Edit_News(state,Editnews){
            let index = state.news.findIndex(n => n.n_id == Editnews.n_id)
            if(index > -1){
                state.news[index] = Editnews
            }
        },
        Edit_Article(state,Editarticle){
            let index = state.article.findIndex(a => a.a_id == Editarticle.a_id)
            if(index > -1){
                state.article[index] = Editarticle
            }
        },


    },
    actions : {
        // Start Load Data
        initApp(context){
            // check login
            if(this.state.log_on !== null){
                var user = { token : this.state.log_on}
                // console.log(user)
                axios.post("http://gamaproject.vue.com/user/loadLogin", JSON.stringify(user))
                .then(response => {
                    context.commit("Log_On",response.data)
                })
            }else{
                this.state.the_user=''
            }
        },
        initDataNews(context){
            axios.get("http://gamaproject.vue.com/news/get_all_news")
                .then(response => {
                    // console.log(response)
                    context.commit("NewsAll",response.data)
            })
        },
        initDataArticle(context){
            axios.get("http://gamaproject.vue.com/article/get_all_article")
                .then(response => {
                    // console.log(response)
                    context.commit("ArticleAll",response.data)
            })
        },
        initDataProduct(context){
            axios.get("http://gamaproject.vue.com/product/get_all_product")
                .then(response => {
                    // console.log(response)
                    context.commit("ProductAll",response.data)
            })
        },
        initDataVideos(context){
            axios.get("http://gamaproject.vue.com/Videos_Room/get_all_videos")
                .then(response => {
                    // console.log(response.data)
                    context.commit("VideosAll",response.data)
            })
        },
        initDataVideo_Room(context){
            axios.get("http://gamaproject.vue.com/Videos_Room/get_all_video_room")
                .then(response => {
                    // console.log(response)
                    context.commit("Video_Room",response.data)
            })
        },
        // End Load Data
        // load page
        LoadingPage(context,statusPage){
            context.commit('LoadingPage',statusPage)
        },
        // login
        Logining_in(context,user){
            // console.log(user)            
            axios.post("http://gamaproject.vue.com/user/checkLogin", JSON.stringify(user))
            .then(response => {
                // console.log(response)
                    if(response.data != '' && response.data != null){
                        var the_token = response.data.token_logged
                            localStorage.setItem('The_User',the_token)
                            context.commit("Logining_in",the_token)
                            context.commit("Log_On",response.data)
                    }
            })
        },
        Log_Out(context){
            var user_logout = { token : this.state.log_on}
            axios.post("http://gamaproject.vue.com/user/log_out", JSON.stringify(user_logout))
            .then(response => {
                localStorage.removeItem('The_User')
                context.commit("Log_Out")
                // console.log(response)
            })
        },
        Register(context,newuser){
            axios.post("http://gamaproject.vue.com/user/save", JSON.stringify(newuser))
            .then(response => {
                // console.log(newuser)
                context.commit("addMember",{ m_id : response.data.insert_id, ...newuser})
            })
        },
        // Start Add data
        Add_News(context,news){
            axios.post('http://gamaproject.vue.com/news/insert_news',news)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Add_News",response.data)
                }
            })
        },
        Add_Article(context,article){
            axios.post('http://gamaproject.vue.com/article/insert_article',article)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Add_Article",response.data)
                }
            })
        },
        Add_Product(context,product){
            axios.post('http://gamaproject.vue.com/product/insert_product',product)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Add_Product",response.data)
                }
            })
        },
        CreateRoom(context,newRoom){
            axios.post('http://gamaproject.vue.com/Videos_Room/insert_room',newRoom)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("CreateRoom",response.data)
                }
            })
        },
        AddVideos(context,newvideos){
            axios.post('http://gamaproject.vue.com/Videos_Room/insert_videos',newvideos)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("AddVideos",response.data)
                }
            })
        },
        // End Add Data
        // Start Edit Data
        Edit_News(context,news){
            axios.post('http://gamaproject.vue.com/news/update_news',news)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Edit_News",response.data)
                }
            })
        },
        Edit_Article(context,article){
            axios.post('http://gamaproject.vue.com/article/update_article',article)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Edit_Article",response.data)
                }
            })
        },
        
        
        
    },
    getters : {
        getMembers(state){
            return state.members
        },
        getThe_User(state){
            return state.the_user
        },
        getNews(state){
            return state.news.reverse()
        },
        getArticle(state){
            return state.article.reverse()
        },
        getProduct(state){
            return state.product.reverse()
        },
        getBook(state){
            let product = state.product
            var booklist =[]
            // = this.book
                for(var i=0; i<product.length; i++){
                    if(product[i].p_type == 'book'){
                        booklist.push(product[i])
                    }
                }
            return booklist.reverse()
        },
        getTrainingCourse(state){
            let productall = state.product
            var trainingC =[]
            // = this.book
                for(var i=0; i<productall.length; i++){
                    if(productall[i].p_type == 'training_course'){
                        trainingC.push(productall[i])
                    }
                }
            return trainingC.reverse()
        },
        getVideos(state){
            return state.videos
        },
        getVideo_Room(state){
            return state.video_room.reverse()
        }
    }

})

export default store