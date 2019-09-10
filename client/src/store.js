import Vue from "vue"
import Vuex from "vuex"
import axios from "axios"

Vue.use(Vuex)

const store = new Vuex.Store({
    state : {
        statusPage:'',
        statusRegister:'',

        news:[],
        article:[],article_category:[],
        files:[],
        product:[],product_category:[],product_image:[],
        cart:[],

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
        Article_Category(state,a_category){
            state.article_category = a_category
        },
        ProductAll(state,product){
            state.product = product
        },
        Product_CategoryAll(state,product){
            state.product_category = product
        },
        Product_ImageAll(state,product){
            state.product_image = product
        },
        FilesAll(state,files){
            state.files = files
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
        addMember(state,statusrR){
            // state.members.push(member)
            state.statusRegister = statusrR
        },
        Add_News(state,Newnews){
            // console.log('News',Newnews.news)
            // console.log('File',Newnews.files)
            state.news.push(Newnews.news)
        },
        Add_Article(state,Newarticle){
            // console.log('News',Newarticle.article)
            // console.log('File',Newarticle.files)
            state.article.push(Newarticle.article)
        },
        Add_Files_Upload(state,Newfiles){
            state.files.push(Newfiles)
        },
        Add_Product(state,Newproduct){
            state.product.push(Newproduct.product)
            for(var i=0; i<Newproduct.product_image.length; i++){
                state.product_image.push(Newproduct.product_image[i])
            }
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
        Edit_News(state,E_news){
            var Editnews = E_news.news
            let index = state.news.findIndex(n => n.n_id == Editnews.n_id)
            if(index > -1){
                state.news[index] = Editnews
            }
            // var addFiles = E_news.files
            // if(addFiles!=null){
            //     for(var i=0; i<addFiles.length; i++){
            //         state.files.push(addFiles[i])
            //     }
            // }
        },
        Edit_Article(state,E_article){
            var Editarticle = E_article.article
            let index = state.article.findIndex(a => a.a_id == Editarticle.a_id)
            if(index > -1){
                state.article[index] = Editarticle
            }
            // var addFiles = E_article.files
            // if(addFiles != null){
            //     for(var i=0; i<addFiles.length; i++){
            //         state.files.push(addFiles[i])
            //     }
            // }
        },
        Edit_Product(state,thisProduct){
            var Editproduct = thisProduct.product
            let index = state.product.findIndex(p => p.p_id == Editproduct.p_id)
            if(index > -1){
                state.product[index] = Editproduct
            }
            // var addProductImage = thisProduct.product_image
            // if(addProductImage != null){
            //     for(var i=0; i<addProductImage.length;i++){
            //         state.product_image.push(addProductImage[i])
            //     }
            // }
        },
        Edit_Video_Room(state,Editvideo_room){
            let index = state.video_room.findIndex(vr => vr.vr_id == Editvideo_room.vr_id)
            if(index > -1){
                state.video_room[index] = Editvideo_room
            }
        },
        Edit_Video(state,Editvideo){
            let index = state.videos.findIndex(v => v.v_id == Editvideo.v_id)
            if(index > -1){
                state.videos[index] = Editvideo
            }
        },
        Edit_Profile(state,Eprofile){
            state.the_user = Eprofile
        },
        Delete_News(state,newsID){
            let index = state.news.findIndex(n => n.n_id == newsID)
            if(index > -1){
                // console.log(state.news[index])
                state.news.splice(index,1)
            }
        },
        Delete_Article(state,articleID){
            let index = state.article.findIndex(a => a.a_id == articleID)
            if(index > -1){
                // console.log(state.article[index])
                state.article.splice(index,1)
            }
        },
        Delete_File(state,fileID){
            let index = state.files.findIndex(f => f.f_id == fileID)
            if(index > -1){
                // console.log(state.files[index])
                state.files.splice(index,1)
            }
        },
        Delete_Product_Image(state,product_imageID){
            let index = state.product_image.findIndex(pi => pi.pi_id == product_imageID)
            if(index > -1){
                // console.log(state.files[index])
                state.product_image.splice(index,1)
            }
        },
        Delete_Product(state,productID){
            let index = state.product.findIndex(p => p.p_id == productID)
            if(index > -1){
                // console.log(state.product[index])
                state.product.splice(index,1)
            }
        },
        // Cart 
        Add_Cart(state,add_cart){
            // console.log(add_cart.p_id)
            var productAdd = add_cart
            var chk = 'yes'
            if(state.cart!=null){
                for(var i=0; i<state.cart.length; i++){
                    if(state.cart[i].p_id == productAdd.p_id){
                        state.cart[i].quantity = state.cart[i].quantity + productAdd.quantity
                        chk = 'no'
                    } 
                }
            }
            if(chk == 'yes'){
                state.cart.push(productAdd)
            }
            localStorage.setItem("Cart", JSON.stringify(state.cart));
            // state.cart = null
            // state.cart = add_cart
        },
        Remove_Cart(state){
            console.log('remove')
            state.cart = []
            localStorage.removeItem('Cart')

        }
        

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
        initDataArticle_Category(context){
            axios.get("http://gamaproject.vue.com/article/get_all_article_category")
                .then(response => {
                    // console.log(response)
                    context.commit("Article_Category",response.data)
            })
        },
        initDataFiles(context){
            axios.get("http://gamaproject.vue.com/Files_Upload/get_all_files_upload")
                .then(response => {
                    context.commit("FilesAll",response.data)
            })
        },
        initDataProduct(context){
            // set cart 
            if(localStorage.getItem('Cart')){
                this.state.cart = JSON.parse(localStorage.getItem('Cart'))
            }
            // get product
            axios.get("http://gamaproject.vue.com/product/get_all_product")
                .then(response => {
                    // console.log(response)
                    context.commit("ProductAll",response.data)
            })
        },
        initDataProduct_Category(context){
            axios.get("http://gamaproject.vue.com/product/get_all_product_category")
                .then(response => {
                    // console.log(response)
                    context.commit("Product_CategoryAll",response.data)
            })
        },
        initDataProduct_Image(context){
            axios.get("http://gamaproject.vue.com/product/get_all_product_image")
                .then(response => {
                    // console.log(response)
                    context.commit("Product_ImageAll",response.data)
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
                console.log(response.data)
                context.commit("addMember",response.data)
            })
        },
        // Start Add data
        Add_News(context,news){
            axios.post('http://gamaproject.vue.com/news/insert_news',news)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data[0])
                    context.commit("Add_News",response.data[0])
                }
            })
        },
        Add_Article(context,article){
            axios.post('http://gamaproject.vue.com/article/insert_article',article)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data[0])
                    context.commit("Add_Article",response.data[0])
                    // context.commit("Add_Files_Upload",response.data[0].files)
                }
            })
        },
        Add_Product(context,product){
            axios.post('http://gamaproject.vue.com/product/insert_product',product)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data[0])
                    context.commit("Add_Product",response.data[0])
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
                // console.log('Response Data',response.data[0])
                if(response.data != 'fail'){
                    context.commit("Edit_News",response.data[0])
                }
            })
        },
        Edit_Article(context,article){
            axios.post('http://gamaproject.vue.com/article/update_article',article)
            .then(response =>{
                // console.log('Response Data',response.data[0])
                if(response.data != 'fail'){
                    context.commit("Edit_Article",response.data[0])
                }
            })
        },
        Edit_Product(context,product){
            axios.post('http://gamaproject.vue.com/product/update_product',product)
            .then(response =>{
                // console.log('Response Data',response.data[0])
                if(response.data != 'fail'){
                    context.commit("Edit_Product",response.data[0])
                }
            })
        },
        Edit_Video_Room(context,video_room){
            axios.post('http://gamaproject.vue.com/Videos_Room/update_video_room',video_room)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Edit_Video_Room",response.data)
                }
            })
        },
        Edit_Video(context,video){
            axios.post('http://gamaproject.vue.com/Videos_Room/update_video',video)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Edit_Video",response.data)
                }
            })
        },
        Edit_Profile(context,profile){
            axios.post('http://gamaproject.vue.com/user/edit_profile',profile)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Edit_Profile",response.data)
                }
            })
        },
        Delete_News(context,this_news){
            axios.post('http://gamaproject.vue.com/news/delete_news',this_news)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_News",response.data)
                }
            })
        },
        Delete_Article(context,this_article){
            axios.post('http://gamaproject.vue.com/article/delete_article',this_article)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_Article",response.data)
                }
            })
        },
        Delete_File(context,this_news){
            axios.post('http://gamaproject.vue.com/Files_Upload/delete_files_upload',this_news)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_File",response.data)
                }
            })
        },
        Delete_Product_Image(context,product_imageID){
            axios.post('http://gamaproject.vue.com/product/delete_product_image',product_imageID)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_Product_Image",response.data)
                }
            })            
        },
        Delete_Product(context,this_product){
            axios.post('http://gamaproject.vue.com/product/delete_product',this_product)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Delete_Product",response.data)
                }
            })
        },
        
        // Cart Real Time 
        Add_Cart(context,addProduct){
            console.log(addProduct)
            context.commit('Add_Cart',addProduct)
        },
        Remove_Cart(context){
            context.commit('Remove_Cart')
        }
        
        
    },
    getters : {
        getMembers(state){
            return state.members
        },
        getThe_User(state){
            return state.the_user
        },
        getNews(state){
            return state.news
        },
        getArticle(state){
            return state.article
        },
        getArticle_Category(state){
            return state.article_category
        },
        getFiles(state){
            return state.files
        },
        getProduct(state){
            return state.product
        },
        getProduct_Category(state){
            return state.product_category
        },
        getProduct_Image(state){
            return state.product_image
        },
        getProduct_Set_Category(state){
            let productall = state.product
            let productcategory = state.product_category
            var product_set_category =[]
                for(var i=0; i<productall.length; i++){                    
                    for(var j=0; j<productcategory.length;j++){
                        if(productall[i].p_category == productcategory[j].pc_id){
                            productall[i].p_category = productcategory[j].pc_title
                        }
                    }
                    product_set_category.push(productall[i])
                }
            return product_set_category
        },
        getVideos(state){
            return state.videos
        },
        getVideo_Room(state){
            return state.video_room
        },

        getCart(state){
            return state.cart
        }
    }

})

export default store