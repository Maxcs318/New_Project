<template>
    <div>
        <br>
        <h5>หลักสูตรอบรม</h5>
        <div class="container">
            <div class="row">
                <!-- <div class="col-lg-3 col-md-6" v-for="(article,index) in this.$store.state.article.slice(0,4)" :key="index" >
                    <img :src="getImgUrlArticle(article.a_image)" width="100%">
                    <h5>{{article.a_title}}</h5>
                    <p style="text-align: right;">{{article.a_date}}</p>
                    <p style="text-indent: 2em;">{{article.a_detail.slice(0,60)}}</p>
                    <p style="text-align: right;">อ่านเพิ่มเติม</p>
                </div> -->
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrlArticle(picA) {
            return require('../../../assets/Article/'+picA)
        }
    }
}
</script>
