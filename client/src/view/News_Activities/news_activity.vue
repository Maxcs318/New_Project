<template>
    <div class="container mt-3">
        <div class="row ">
            <div class="col-lg-2 col-xs-12"></div>
            <div class="col-lg-8 col-xs-12" v-if="thisNews">
                <img :src="getImgUrl(thisNews.n_image)" width="100%">
                <!-- <a :href="getImgUrl(thisNews.n_image)" download>File Dowload</a> -->
                <h5 class="mt-3">{{thisNews.n_title}}</h5>
                <p style="text-align: right;">{{thisNews.n_date}}</p>
                <p style="text-indent: 2em;">{{thisNews.n_detail}}</p>
                <div v-if="thisFiles != null" v-for="(file,index) in thisFiles" :key="index" >
                    <a :href="loadFile(file.f_name)" download> Dowload File {{index+1}}</a> {{file.f_title}}<br>
                </div>
            </div>
            <div class="col-lg-8 col-xs-12 mt-5" v-else>
                This Page No Data.
            </div>  
            <div class="col-lg-2 col-xs-12"></div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrl(pic) {
            return require('../../assets/News/'+pic)
        },
        loadFile(fi){
            return require('../../assets/Files_Upload/'+fi)
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
        }
    }
}
</script>
