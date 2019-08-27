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
        }
    }
}
</script>
