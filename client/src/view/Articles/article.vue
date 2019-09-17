<template>
    <div class="container ">
        <div class="row ">
            <div class="col-lg-2 col-xs-12"></div>
            <div class="col-lg-8 col-xs-12" v-if="thisArticle != null">
                <img :src="getImgUrl(thisArticle.a_image)" width="100%">
                <p style="text-align: right;">{{thisArticle.a_category}}</p>
                <h5 class="mt-3">{{thisArticle.a_title}}</h5>
                <p style="text-align: right;">{{thisArticle.a_create_date}}</p>
                <p style="text-indent: 2em;">{{thisArticle.a_detail}}</p>
                <div v-if="thisFiles != null" v-for="(file,index) in thisFiles" :key="index" >
                    <a :href="loadFile(file.f_name)" download> Dowload File {{index+1}}</a> {{file.f_title}}<br>
                </div>
            </div>
            <div class="col-lg-2 col-xs-12"></div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrl(pic) {
            return this.path_files+'Article/'+pic
        },
        loadFile(fi){
            return this.path_files+'Files_Upload/'+fi
        }
    },
    computed : {
        path_files(){
            return this.$store.getters.getPath_Files
        },
        thisArticle(){
            var articleAll = this.$store.getters.getArticle
            var article
            var article_c = this.$store.getters.getArticle_Category
            for(var i=0; i<articleAll.length; i++){
                if(articleAll[i].a_id == this.$route.params.ArticleID){       
                    article = articleAll[i]
                }
            }
            for(var j=0; j<article_c.length; j++){
                if(article.a_category == article_c[j].ac_id){
                    article.a_category = article_c[j].ac_title
                }
            }
            return article
        },
        thisFiles(){
            var filesAll = this.$store.getters.getFiles
            var files_article = []
            for(var i=0; i<filesAll.length; i++){
                if(filesAll[i].f_key == this.thisArticle.a_file_key){
                    files_article.push(filesAll[i])
                }
            }
            if(files_article.length != 0){
                return files_article
            }else{
                return false
            }
        }
    }
}
</script>
