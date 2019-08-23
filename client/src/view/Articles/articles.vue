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
                <div class="row" v-if="the_user.m_status == 'admin'">
                    <div class="col-lg-6 col-lg-xs-12">
                        <button class="form-control btn-success" @click="editArticle(article.a_id)"> Edit </button> <br>
                    </div>
                    <div class="col-lg-6 col-lg-xs-12">
                        <button class="form-control btn-danger"> Delete </button> <br>
                    </div>
                </div>
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
        },
        editArticle(thisarticle){
            this.$router.push({name:'editarticle',params:{ArticleID:thisarticle}});
        }
    },
    computed:{
        the_article(){
            return this.$store.getters.getArticle
        },
        the_user(){
            return this.$store.getters.getThe_User
        }
    }
}
</script>
