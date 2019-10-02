import Vue from "vue"
import Vuex from "vuex"
import axios from "axios"

Vue.use(Vuex)
const base_url = 'http://gamaproject.vue.com/'
const store = new Vuex.Store({
    state : {
        file_image_path:'http://gamaproject.vue.com/assets/',

        statusPage:'',
        statusRegister:'',

        news:[],
        article:[],article_category:[],
        academic_article:[],academic_article_category:[],
        online_journal:[],
        files:[],

        product:[],product_category:[],product_image:[],
        order:[],order_items:[],order_status:[],  
        shipping_address:[],
        payment:[],banking:[],
        money_transfer:[],
        
        gallery:[],gallery_image:[],

        members : [],member_type:[],member_upgrade_date:[],
        the_user:'',
        log_on: localStorage.getItem('The_User') || null,
        videos:[],
        video_room:[]
    },
//==========================================================================================================
//==========================================================================================================
//==========================================================================================================

    mutations : {
        initMembers(state,members){
            state.members = members
        },
        Member_Type(state,member_type){
            state.member_type = member_type
        },
        Members_Upgrade_date(state,members_up){
            state.member_upgrade_date = members_up
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
        Orders(state,order){
            state.order = order
        },
        Order_Items(state,order_items){
            state.order_items = order_items
        },
        Order_Status(state,order_status){
            state.order_status = order_status
        },
        Shipping_Address(state,sa){
            state.shipping_address = sa
        },
        Payment(state,pm){
            state.payment = pm
        },
        Banking(state,bk){
            state.banking = bk
        },
        Money_Transfer(state,mtf){
            state.money_transfer = mtf
        },
        GalleryAll(state,gallery){
            state.gallery = gallery
        },
        Gallery_ImageAll(state,gallery_image){
            state.gallery_image = gallery_image
        },
        Academic_ArticleAll(state,academic_article){
            state.academic_article = academic_article
        },
        Academic_Article_Category(state,aa_category){
            state.academic_article_category = aa_category
        },
        Online_Journal(state,oj){
            state.online_journal = oj
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
        Add_Academic_Article(state,Newacademic_article){
            state.academic_article.push(Newacademic_article.academic_article)    
        },
        
        Edit_News(state,E_news){
            var Editnews = E_news.news
            let index = state.news.findIndex(n => n.n_id == Editnews.n_id)
            if(index > -1){
                state.news[index] = Editnews
            }
            var addFiles = E_news.files
            if(addFiles!=null){
                for(var i=0; i<addFiles.length; i++){
                    state.files.push(addFiles[i])
                }
            }
        },
        Edit_Article(state,E_article){
            var Editarticle = E_article.article
            let index = state.article.findIndex(a => a.a_id == Editarticle.a_id)
            if(index > -1){
                state.article[index] = Editarticle
            }
            var addFiles = E_article.files
            if(addFiles != null){
                for(var i=0; i<addFiles.length; i++){
                    state.files.push(addFiles[i])
                }
            }
        },
        Edit_Product(state,thisProduct){
            var Editproduct = thisProduct.product
            let index = state.product.findIndex(p => p.p_id == Editproduct.p_id)
            if(index > -1){
                state.product[index] = Editproduct
                // console.log(state.product[index])
            }
            var addProductImage = thisProduct.product_image
            if(addProductImage != null){
                for(var i=0; i<addProductImage.length;i++){
                    // console.log(addProductImage[i])
                    state.product_image.push(addProductImage[i])
                }
            }
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
        Edit_Academic_Article(state,E_academic_article){
            var Edit_AA = E_academic_article.academic_article
            let index = state.academic_article.findIndex(a => a.aa_id == Edit_AA.aa_id)
            if(index > -1){
                state.academic_article[index] = Edit_AA
            }
            var addFiles = E_academic_article.files
            if(addFiles != null){
                for(var i=0; i<addFiles.length; i++){
                    state.files.push(addFiles[i])
                }
            }
        },
        Edit_Online_Journal(state,E_OJ){
            var Edit_OJ = E_OJ.online_journal
            let index = state.online_journal.findIndex(oj => oj.oj_id == Edit_OJ.oj_id)
            if(index > -1){
                state.online_journal[index] = Edit_OJ
            }
            var addFiles = E_OJ.files
            if(addFiles != null){
                for(var i=0; i<addFiles.length; i++){
                    state.files.push(addFiles[i])
                }
            }
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
        Delete_Academic_Article(state,academic_articleID){
            let index = state.academic_article.findIndex(a => a.aa_id == academic_articleID)
            if(index > -1){
                // console.log(state.article[index])
                state.academic_article.splice(index,1)
            }
        },
        Delete_Online_Journal(state,ojID){
            let index = state.online_journal.findIndex(oj => oj.oj_id == ojID)
            if(index > -1){
                // console.log(state.article[index])
                state.online_journal.splice(index,1)
            }
        },

        // Cart 
        Add_Cart(state,add_cart){
            // console.log(add_cart.p_id)
            var cart = JSON.parse(localStorage.getItem('Cart'))
            if(cart == null){
                cart = []
            }
            var chk = 'yes'
            if(cart.length>0){
                for(var i=0; i<cart.length; i++){
                    if(cart[i].p_id == add_cart.p_id){
                        cart[i].quantity = cart[i].quantity + add_cart.quantity
                        chk = 'no'
                    } 
                }
            }
            if(chk == 'yes'){
                cart.push(add_cart)
            }
            localStorage.removeItem('Cart')
            localStorage.setItem("Cart", JSON.stringify(cart));
        },
        Remove_Product_In_Cart(state,productID){
            var cart = JSON.parse(localStorage.getItem('Cart'))

            let index = cart.findIndex(p => p.p_id == productID)
            if(index > -1){
                cart.splice(index,1)
            }
            localStorage.removeItem('Cart')
            localStorage.setItem("Cart", JSON.stringify(cart));
        },
        Remove_Cart(state){
            // console.log('remove')
            localStorage.removeItem('Cart')
        },
        Add_Cart_ProductAdd(state,productID){
            var cart = JSON.parse(localStorage.getItem('Cart'))
            let index = cart.findIndex(p => p.p_id == productID)
            cart[index].quantity = cart[index].quantity+1
            localStorage.removeItem('Cart')
            localStorage.setItem("Cart", JSON.stringify(cart));
        },
        Remove_Cart_ProductRemove(state,productID){
            var cart = JSON.parse(localStorage.getItem('Cart'))
            let index = cart.findIndex(p => p.p_id == productID)
            cart[index].quantity = cart[index].quantity-1
            localStorage.removeItem('Cart')
            localStorage.setItem("Cart", JSON.stringify(cart));
        },
        Create_Order(state,order){
            state.order.push(order)
        },
        Delete_My_Order(state,order){
            var order_id = order.o_id 
            let index = state.order.findIndex(o => o.o_id == order_id)
            if(index > -1){
                state.order.splice(index,1)
            }
        },
        Money_Transfer_Insert(state, mtf_insert){
            
            var mtf = mtf_insert.money_transfer
            var order_id = mtf_insert.order_id
            // console.log(order_id)
            // console.log(mtf)
            state.money_transfer.push(mtf)
            let index = state.order.findIndex(o => o.o_id == order_id)
            if(index > -1){
                state.order[index].o_money_transfer_id = mtf.mtf_id
                state.order[index].o_status_id = 2
            }
        },
        Confirm_Order(state,order_code){
            let index = state.order.findIndex(o => o.o_code_order == order_code)
            if(index > -1){
                state.order[index].o_status_id = 3
                // console.log(state.order[index])
            }
        },
        Discard_Order(state,order_code){
            let index = state.order.findIndex(o => o.o_code_order == order_code)
            if(index > -1){
                state.order[index].o_status_id = 1
                // console.log(state.order[index])
            }
        },
        Delivery_Order(state,order_code){
            let index = state.order.findIndex(o => o.o_code_order == order_code)
            if(index > -1){
                state.order[index].o_status_id = 4
                // console.log(state.order[index])
            }
        },
        Add_Gallery(state,gallery){
            var gallery_image = gallery.gallery_image
            state.gallery.push(gallery.gallery)
            // console.log(gallery.gallery)
            for(var i=0;i<gallery_image.length;i++){
                // console.log(gallery_image[i])
                state.gallery_image.push(gallery_image[i])
            }
        },
        Edit_Gallery(state,gallery){
            var this_gallery = gallery.gallery
            var gallery_image = gallery.gallery_image
            let index = state.gallery.findIndex(g => g.g_id == this_gallery.g_id)
            if(index > -1){
                // console.log(this_gallery)
                state.gallery[index] = this_gallery
            }
            for(var i=0;i<gallery_image.length;i++){
                // console.log(gallery_image[i])
                state.gallery_image.push(gallery_image[i])
            }
        },
        Delete_Gallery(state,gallery){
            let index = state.gallery.findIndex(g => g.g_id == gallery)
            if(index > -1){
                state.gallery.splice(index,1)
            }
        },
        Delete_Gallery_Image(state,gallery_imageID){
            let index = state.gallery_image.findIndex(gi => gi.gi_id == gallery_imageID)
            if(index > -1){
                state.gallery_image.splice(index,1)
            }
        },
        Add_Online_Journal(state,NewOJ){
            state.news.push(NewOJ.online_journal)
        }
        


    },

//==========================================================================================================
//==========================================================================================================
//==========================================================================================================

    actions : {
        // Start Load Data
        initApp(context){
            // check login            
            if(this.state.log_on !== null){
                var user = { token : this.state.log_on}
                // console.log(user)
                axios.post(base_url +"user/loadLogin", JSON.stringify(user))
                .then(response => {
                    context.commit("Log_On",response.data)
                })
            }else{
                this.state.the_user=''
            }
        },
        initMembers(context){
            axios.get(base_url +"user/get_all_datamember")
            .then(response => {
                // console.log(response.data)
                context.commit("initMembers",response.data)
            })
        },
        initDataMember_Upgrade_Date(context){
            axios.get(base_url +"user/get_all_member_upgrade")
            .then(response => {
                // console.log(response.data)
                context.commit("Members_Upgrade_date",response.data)
            })
        },
        initDataMember_Type(context){
            axios.get(base_url +"user/get_all_member_type")
                .then(response => {
                    // console.log(response)
                    context.commit("Member_Type",response.data)
                })
        },
        initDataNews(context){
            axios.get(base_url +"news/get_all_news")
                .then(response => {
                    // console.log(response)
                    context.commit("NewsAll",response.data)
            })
        },
        initDataArticle(context){
            axios.get(base_url +"article/get_all_article")
                .then(response => {
                    // console.log(response)
                    context.commit("ArticleAll",response.data)
            })
        },
        initDataArticle_Category(context){
            axios.get(base_url +"article/get_all_article_category")
                .then(response => {
                    // console.log(response)
                    context.commit("Article_Category",response.data)
            })
        },
        initDataFiles(context){
            axios.get(base_url +"Files_Upload/get_all_files_upload")
                .then(response => {
                    context.commit("FilesAll",response.data)
            })
        },
        initDataProduct(context){
            // get product
            axios.get(base_url +"product/get_all_product")
                .then(response => {
                    // console.log(response)
                    context.commit("ProductAll",response.data)
            })
        },
        initDataProduct_Category(context){
            axios.get(base_url +"product/get_all_product_category")
                .then(response => {
                    // console.log(response)
                    context.commit("Product_CategoryAll",response.data)
            })
        },
        initDataProduct_Image(context){
            axios.get(base_url +"product/get_all_product_image")
                .then(response => {
                    // console.log(response)
                    context.commit("Product_ImageAll",response.data)
            })
        },
        initDataVideos(context){
            axios.get(base_url +"Videos_Room/get_all_videos")
                .then(response => {
                    // console.log(response.data)
                    context.commit("VideosAll",response.data)
            })
        },
        initDataVideo_Room(context){
            axios.get(base_url +"Videos_Room/get_all_video_room")
                .then(response => {
                    // console.log(response)
                    context.commit("Video_Room",response.data)
            })
        },
        // = = =
        initDataOrders(context){
            axios.get(base_url +"order/get_all_order")
                .then(response => {
                    // console.log(response)
                    context.commit("Orders",response.data)
            })
        },
        initDataOrder_Items(context){
            axios.get(base_url +"order/get_all_order_items")
                .then(response => {
                    // console.log(response)
                    context.commit("Order_Items",response.data)
            })
        },
        initDataOrder_Status(context){
            axios.get(base_url +"order/get_all_order_status")
                .then(response => {
                    // console.log(response)
                    context.commit("Order_Status",response.data)
            })
        },
        initDataShipping_Address(context){
            axios.get(base_url +"Shipping_Address/get_all_shipping_address")
                .then(response => {
                    // console.log(response)
                    context.commit("Shipping_Address",response.data)
            })
        },
        initDataPayment(context){
            axios.get(base_url +"Payment/get_all_payment")
                .then(response => {
                    // console.log(response)
                    context.commit("Payment",response.data)
            })
        },
        initDataBanking(context){
            axios.get(base_url +"Banking/get_all_banking")
                .then(response => {
                    // console.log(response)
                    context.commit("Banking",response.data)
            })
        },
        initDataMoney_Transfer(context){
            axios.get(base_url +"Money_Transfer/get_all_money_transfer")
                .then(response => {
                    // console.log(response)
                    context.commit("Money_Transfer",response.data)
            })
        },
        initDataGallery(context){
            axios.get(base_url +"Gallery/get_all_gallery")
                .then(response => {
                    // console.log(response.data)
                    context.commit("GalleryAll",response.data)
            })
        },
        initDataGallery_Image(context){
            axios.get(base_url +"Gallery/get_all_gallery_image")
                .then(response => {
                    // console.log(response.data)
                    context.commit("Gallery_ImageAll",response.data)
            })
        },
        initDataAcademic_Article(context){
            axios.get(base_url +"academic_article/get_all_academic_article")
            .then(response => {
                // console.log(response)
                context.commit("Academic_ArticleAll",response.data)
            })
        },
        initDataAcademic_Article_Category(context){
            axios.get(base_url +"academic_article/get_all_academic_article_category")
            .then(response => {
                // console.log(response)
                context.commit("Academic_Article_Category",response.data)
            })
        },
        initDataOnline_Journal(context){
            axios.get(base_url +"online_journal/get_all_online_journal")
            .then(response => {
                // console.log(response)
                context.commit("Online_Journal",response.data)
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
            axios.post(base_url +"user/checkLogin", JSON.stringify(user))
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
            axios.post(base_url +"user/log_out", JSON.stringify(user_logout))
            .then(response => {
                localStorage.removeItem('The_User')
                context.commit("Log_Out")
                // console.log(response)
            })
        },
        Register(context,newuser){
            axios.post(base_url +"user/save", JSON.stringify(newuser))
            .then(response => {
                // console.log(response.data)
                context.commit("addMember",response.data)
            })
        },
        // Start Add data
        Add_News(context,news){
            axios.post(base_url +'news/insert_news',news)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data[0])
                    context.commit("Add_News",response.data[0])
                }
            })
        },
        Add_Article(context,article){
            axios.post(base_url +'article/insert_article',article)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data[0])
                    context.commit("Add_Article",response.data[0])
                }
            })
        },
        Add_Product(context,product){
            axios.post(base_url +'product/insert_product',product)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data[0])
                    context.commit("Add_Product",response.data[0])
                }
            })
        },
        CreateRoom(context,newRoom){
            axios.post(base_url +'Videos_Room/insert_room',newRoom)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("CreateRoom",response.data)
                }
            })
        },
        AddVideos(context,newvideos){
            axios.post(base_url +'Videos_Room/insert_videos',newvideos)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("AddVideos",response.data)
                }
            })
        },
        Add_Academic_Article(context,academic_article){
            axios.post(base_url +'academic_article/insert_academic_article',academic_article)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Add_Academic_Article",response.data[0])
                }
            })
        },
        Add_Online_Journal(context,online_journal){
            axios.post(base_url +'online_journal/insert_online_journal',online_journal)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Add_Online_Journal",response.data[0])
                }
            })
        },


        // End Add Data
        // Start Edit Data
        Edit_News(context,news){
            axios.post(base_url +'news/update_news',news)
            .then(response =>{
                // console.log('Response Data',response.data[0])
                if(response.data != 'fail'){
                    context.commit("Edit_News",response.data[0])
                }
            })
        },
        Edit_Article(context,article){
            axios.post(base_url +'article/update_article',article)
            .then(response =>{
                // console.log('Response Data',response.data[0])
                if(response.data != 'fail'){
                    context.commit("Edit_Article",response.data[0])
                }
            })
        },
        Edit_Product(context,product){
            axios.post(base_url +'product/update_product',product)
            .then(response =>{
                // console.log('Response Data',response.data[0])
                if(response.data != 'fail'){
                    context.commit("Edit_Product",response.data[0])
                }
            })
        },
        Edit_Video_Room(context,video_room){
            axios.post(base_url +'Videos_Room/update_video_room',video_room)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Edit_Video_Room",response.data)
                }
            })
        },
        Edit_Video(context,video){
            axios.post(base_url +'Videos_Room/update_video',video)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Edit_Video",response.data)
                }
            })
        },
        Edit_Profile(context,profile){
            axios.post(base_url +'user/edit_profile',profile)
            .then(response =>{
                if(response.data != 'fail'){
                    console.log('Response Data',response.data)
                    context.commit("Edit_Profile",response.data)
                }
            })
        },
        Edit_Academic_Article(context,academic_article){
            axios.post(base_url +'academic_article/update_academic_article',academic_article)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Edit_Academic_Article",response.data[0])
                }
            })
        },
        Edit_Online_Journal(context,online_journal){
            axios.post(base_url +'online_journal/update_online_journal',online_journal)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Edit_Online_Journal",response.data[0])
                }
            })
        },
        Delete_News(context,this_news){
            axios.post(base_url +'news/delete_news',this_news)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_News",response.data)
                }
            })
        },
        Delete_Article(context,this_article){
            axios.post(base_url +'article/delete_article',this_article)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_Article",response.data)
                }
            })
        },
        Delete_File(context,this_news){
            axios.post(base_url +'Files_Upload/delete_files_upload',this_news)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_File",response.data)
                }
            })
        },
        Delete_Product_Image(context,product_imageID){
            axios.post(base_url +'product/delete_product_image',product_imageID)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_Product_Image",response.data)
                }
            })            
        },
        Delete_Product(context,this_product){
            axios.post(base_url +'product/delete_product',this_product)
            .then(response =>{
                // console.log('Response Data',response.data)
                if(response.data != 'fail'){
                    context.commit("Delete_Product",response.data)
                }
            })
        },
        Delete_Academic_Article(context,academic_articleID){
            axios.post(base_url +'academic_article/delete_academic_article',academic_articleID)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_Academic_Article",response.data)
                }
            })
        },
        Delete_Online_Journal(context,OJID){
            axios.post(base_url +'online_journal/delete_online_journal',OJID)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit("Delete_Online_Journal",response.data)
                }
            })
        },
        
        // Cart Real Time 
        // เพิ่มสินค้าใน แถบสินค้าลงตะกร้า
        Add_Cart(context,addProduct){
            // console.log(addProduct)
            context.commit('Add_Cart',addProduct)
        },
        // ลบสินค้าในตะกร้า ลบออก 1 สินค้า
        Remove_Product_In_Cart(context,productID){
            context.commit('Remove_Product_In_Cart',productID)
        },
        // ล้างตะกร้า ลบสินค้าทั้งหมดในตะกร้า
        Remove_Cart(context){
            context.commit('Remove_Cart')
        },
        // เพิ่มสินค้า 1 ชิ้น ในหน้าตะกร้า
        Add_Cart_ProductAdd(context,productID){
            context.commit('Add_Cart_ProductAdd',productID)
        },
        // นำสินค้าออก 1 ชิ้น ในหน้าตะกร้า
        Remove_Cart_ProductRemove(context,productID){
            context.commit('Remove_Cart_ProductRemove',productID)

        },

        // Order
        Create_Order(context,order){
            axios.post(base_url +'order/create_order',order)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit('Create_Order',response.data)
                }
            })
        },
        Delete_My_Order(context,orderID){
            axios.post(base_url +'order/delete_order',orderID)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit('Delete_My_Order',response.data)
                }
            })
        },
        // Money Transfer
        Money_Transfer_Insert(context,mtf_i){
            axios.post(base_url +'Money_Transfer/money_trasfer_insert',mtf_i)
            .then(response =>{
                if(response.data != 'fail'){
                    console.log('Response Data',response.data)
                    context.commit('Money_Transfer_Insert',response.data)
                }
            })
        },
        Confirm_Order(context,order_code){
            axios.post(base_url +'order/confirm_order',order_code)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit('Confirm_Order',response.data)
                }
            })
        },
        Discard_Order(context,order_code){
            axios.post(base_url +'order/discard_order',order_code)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit('Discard_Order',response.data)
                }
            })
        },
        Delivery_Order(context,order_code){
            axios.post(base_url +'order/confirm_order_delivery',order_code)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit('Delivery_Order',response.data)
                }
            })
        },
        Add_Gallery(context,gallery){
            axios.post(base_url +'gallery/insert_gallery',gallery)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data[0])
                    context.commit('Add_Gallery',response.data[0])
                }
            })
        },
        Edit_Gallery(context,gallery){
            axios.post(base_url +'gallery/update_gallery',gallery)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit('Edit_Gallery',response.data[0])
                }
            })
        },
        Delete_Gallery(context,gallery){
            axios.post(base_url +'gallery/delete_gallery',gallery)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit('Delete_Gallery',response.data)
                }
            })
        },
        Delete_Gallery_Image(context,gallery_imageID){
            axios.post(base_url +'gallery/delete_gallery_image',gallery_imageID)
            .then(response =>{
                if(response.data != 'fail'){
                    // console.log('Response Data',response.data)
                    context.commit('Delete_Gallery_Image',response.data)
                }
            })
        }
        
        
    },
//==========================================================================================================
//==========================================================================================================
//==========================================================================================================

    getters : {
        getMember_Type(state){
            return state.member_type
        },
        getMember_Upgrade_Date(state){
            return state.member_upgrade_date
        },
        getPath_Files(state){
            return state.file_image_path
        },
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
        getArticle_Set_Category(state){
            var article = state.article
            var article_c = state.article_category
            for(var i=0;i<article.length;i++){
                for(var j=0; j<article_c.length; j++){
                    if(article[i].a_category == article_c[j].ac_id){
                    article[i].a_category = article_c[j].ac_title
                    }
                }
            }
            return article
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
        getOrder(state){
            return state.order
        },
        getOrder_Item(state){
            return state.order_items
        },
        getOrder_Status(state){
            return state.order_status
        },
        getMy_Order(state){
            var ord = state.order
            var user = state.the_user
            var my_o = []
            var my_oh = []
            var my_all_order = []
            for(var i=0; i<ord.length; i++){
                if( ord[i].o_own_id == user.m_id && ord[i].o_status_id == 1 ){
                    my_o.push(ord[i])
                }else if( ord[i].o_own_id == user.m_id && ord[i].o_status_id != 1 ){
                    my_oh.push(ord[i])
                }
            }
                my_all_order.push(my_o)
                my_all_order.push(my_oh)
            return my_all_order
        },
        getOrder_For_Admin(state){
            var ord = state.order
            var order_admin = []
            for(var i=0; i<ord.length; i++){
                if( ord[i].o_status_id != 1 ){
                    order_admin.push(ord[i])
                }
            }
            return order_admin
        },
        getShipping_Address(state){
            return state.shipping_address
        },
        getMy_Shipping_Address(state){
            var sa = state.shipping_address
            var user = state.the_user
            var my_sa =[]
                for(var i=0; i<sa.length; i++){
                    if(sa[i].sa_member_id == user.m_id){
                        my_sa.push(sa[i])
                    }
                }
            return my_sa
        },
        getPayments(state){
            return state.payment
        },
        getBanking(state){
            return state.banking
        },
        getMoney_Transfer(state){
            return state.money_transfer
        },
        getGallery(state){
            return state.gallery
        },
        getGallery_Image(state){
            return state.gallery_image
        },
        getAcademic_Article(state){
            return state.academic_article
        },
        getAcademic_Article_Category(state){
            return state.academic_article_category
        },
        getAcademic_Article_Set_Category(state){
            var academic_article = state.academic_article
            var academic_article_c = state.academic_article_category
            for(var i=0;i<academic_article.length;i++){
                for(var j=0; j<academic_article_c.length; j++){
                    if(academic_article[i].aa_category == academic_article_c[j].aac_id){
                        academic_article[i].aa_category = academic_article_c[j].aac_title
                    }
                }
            }
            return academic_article
        },
        getOnline_Journal(state){
            return state.online_journal
        },
        getOnline_Journal_For_User(state){
            var oj_user = []
            var user = state.the_user
            var online_journal = state.online_journal
                for(var i=0; i<online_journal.length; i++){
                    if(user.m_type >=online_journal[i].oj_permission){
                        oj_user.push(online_journal[i])
                    }
                }
            return oj_user
        },

        
    }

})

export default store