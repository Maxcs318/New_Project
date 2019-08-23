<template>
    <div>
        <br>
        <h5>บทความต่างๆ</h5>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6" v-for="(article,index) in the_article.slice(0,4)" :key="index" >
                    <img :src="getImgUrlArticle(article.a_image)" width="100%" @click="seethisPageArticle(article.a_id)">
                    <h5 @click="seethisPageArticle(article.a_id)">{{article.a_title}}</h5>
                    <p style="text-align: right;">{{article.a_date}}</p>
                    <p style="text-indent: 2em;">{{article.a_detail.slice(0,60)}}</p>
                    <!-- <p style="text-align: right;">อ่านเพิ่มเติม</p> -->
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrlArticle(picA) {
            return require('../../assets/Article/'+picA)
        },
        seethisPageArticle(thisarticle){
            this.$router.push({name:'article',params:{ArticleID:thisarticle}});
        }
    },
    computed:{
        the_article(){
            return this.$store.getters.getArticle
        }
    },
    created(){
        this.$store.dispatch("initDataArticle")
    }
}
</script>
