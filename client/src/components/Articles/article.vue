<template>
    <div>
        <div class="row ">
            <div class="col-lg-2 col-xs-12"></div>
            <div class="col-lg-8 col-xs-12" v-if="thisArticle">
                <img :src="getImgUrl(thisArticle.a_image)" width="100%">
                <h5 class="mt-3">{{thisArticle.a_title}}</h5>
                <p style="text-align: right;">{{thisArticle.a_date}}</p>
                <p style="text-indent: 2em;">{{thisArticle.a_detail}}</p>
            </div>
            <div class="col-lg-2 col-xs-12"></div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrl(pic) {
            return require('../../assets/Article/'+pic)
        }
    },
    computed : {
        thisArticle(){
            var articleAll = this.$store.getters.getArticle
            var article
            for(var i=0; i<articleAll.length; i++){
                if(articleAll[i].a_id == this.$route.params.ArticleID){
                    article = articleAll[i]
                }
            }
            return article
        }
    }
}
</script>
