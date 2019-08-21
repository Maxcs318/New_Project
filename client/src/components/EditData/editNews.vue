<template>
    <div class="container mt-3">
        <div class="row" v-if="thisNews">
            <div class="col-lg-5 col-xs-12">
                <img v-if="url"  :src="url" width="100%"/>
                <img v-else :src="getImgUrl(thisNews.n_image)" width="100%">
                <br><br>
            </div>
            <div class="col-lg-7 col-xs-12">
                <form @submit.prevent="submitNews">                        
                    <input id="chooseImage" ref="files" style="display: none;" type="file" @change="handleFiles">

                    หัวเรื่อง
                    <input type="text" v-model="news.n_title" class="form-control" required>
                    <br>
                    รายระเอียด
                    <textarea v-model="news.n_detail" class="form-control" rows="6" ></textarea>
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
                {{thisNews.n_image}}
                
            </div> 
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            news:'',
            url: null,
            fileimage:''
        }
    },
    methods:{
        getImgUrl(pic) {
            return require('../../assets/News/'+pic)
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
                var jsonNews = JSON.stringify(this.news)
                var FD  = new FormData()
                    if(this.url != null || this.url!= ''){
                        FD.append('userfile',this.fileimage)
                    }
                    FD.append('news',jsonNews)            
                    FD.append('creator',JSON.stringify(this.$store.state.log_on))
                    this.$store.dispatch("Edit_News",FD)
                    setTimeout(()=>{
                        this.$router.go(-1)
                    },2000)  
                this.$swal("Save News Success .", "", "success")
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
            this.news = news 
            return news
        }
    }
}
</script>
