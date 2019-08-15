<template>
    <div class="container">
        <h4 class="mt-3">บทความต่างๆ</h4> <br>
        <div class="row">
            <div class="col-lg-3 col-md-6" v-for="(article,index) in the_article" :key="index" >
                <img :src="getImgUrlArticle(article.a_image)" width="100%" @click="seethisPage(article.a_id)">
                <h5>{{article.a_title}}</h5>
                <p style="text-align: right;">{{article.a_date}}</p>
                <p style="text-indent: 2em;">{{article.a_detail.slice(0,60)}}</p>
                <!-- <p style="text-align: right;">อ่านเพิ่มเติม</p> -->
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrlArticle(pic) {
            return require('../../assets/Article/'+pic)
        },
        seethisPage(thisarticle){
            this.$router.push({name:'article',params:{ArticleID:thisarticle}});
        }
    },
    computed:{
        the_article(){
            return this.$store.getters.getArticle
        }
    }
}
</script>
