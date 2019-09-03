<template>
    <div class="container mt-3">
        <center><h4>Edit News</h4></center>
        <div class="row mt-5" v-if="thisNews && the_user">
            <div class="col-lg-5 col-xs-12">
                <img v-if="url"  :src="url" width="100%"/>
                <img v-else :src="getImgUrl(thisNews.n_image)" width="100%">
                <br><br>
            </div>
            <div class="col-lg-7 col-xs-12">
                <form @submit.prevent="submitNews">                        
                    <input id="chooseImage" ref="files" style="display: none;" type="file" @change="handleFiles">

                    หัวเรื่อง
                    <input type="text" v-model="newsE.n_title" class="form-control" required>
                    <br>
                    รายระเอียด
                    <textarea v-model="newsE.n_detail" class="form-control" rows="6" ></textarea>
                    <br>
                    <div v-if="thisFiles != null" v-for="(file,index) in thisFiles" :key="index" >
                        <a :href="loadFile(file.f_title)" download> Dowload File {{index+1}}</a> {{file.f_title}}<br>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-lg-6">
                            <button type="button" class="form-control btn-success col-lg-12" @click="ChooseFiles"> Change Image </button>
                            <br>
                        </div>
                        <div class="col-lg-6">
                            <button type="submit" class="form-control btn-primary col-lg-12"> Save </button>
                            <br>
                        </div>
                    </div>
                </form>                
            </div> 
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            newsE:'',
            url: null,
            fileimage:''
        }
    },
    methods:{
        getImgUrl(pic) {
            return require('../../../assets/News/'+pic)
        },
        loadFile(fi){
            return require('../../../assets/Files_Upload/'+fi)
        },
        ChooseFiles(){
            document.getElementById('chooseImage').click()
        },
        handleFiles(e){
            const file = e.target.files[0]
            this.url = URL.createObjectURL(file)
            let uploadedFiles = this.$refs.files.files[0]
            this.fileimage = uploadedFiles
            if(this.fileimage.size>10000000){
                this.fileimage = []
                this.url = null
                this.$swal('Your file is larger than 10 MB. Sorry Choose Again !!!')
            }
        },
        submitNews(){
                var jsonNews = JSON.stringify(this.newsE)
                var FD  = new FormData()
                    if(this.url != null || this.url!= ''){
                        FD.append('userfile',this.fileimage)
                    }
                    FD.append('news',jsonNews)            
                    FD.append('creator',JSON.stringify(this.$store.state.log_on))
                    this.$store.dispatch("Edit_News",FD)
                    setTimeout(()=>{
                        this.$router.push('/AdminN')
                    },2000)  
                this.$swal("Edit News Success .", "", "success")
        }
    },
    computed : {
        thisNews(){
            var newsAll = this.$store.getters.getNews
            var news 
            for(var i=0; i<newsAll.length; i++){
                if(newsAll[i].n_id == this.$route.params.NewsID){
                    news = newsAll[i]
                }
            }
            this.newsE = news 
            return news
        },
        thisFiles(){
            var filesAll = this.$store.getters.getFiles
            var files_news = []
            for(var i=0; i<filesAll.length; i++){
                if(filesAll[i].f_key == this.thisNews.n_file_key){
                    files_news.push(filesAll[i])
                }
            }
            if(files_news.length != 0){
                return files_news
            }else{
                return false
            }
        },
        the_user(){
            var user = this.$store.getters.getThe_User
            if( user.m_status != 'admin' ){
                this.$router.push('/')
            }
            return user
        }
    }
}
</script>
