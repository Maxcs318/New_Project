<template>
    <div class="container">
        <h4 class="mt-3">ข่าวสาร & กิจกรรม</h4> <br>
        <div class="row">
            <div class="col-lg-3 col-xs-6" v-for="(news,index) in the_news" :key="index">
                <img :src="getImgUrl(news.n_image)" width="100%"  @click="seethisPage(news.n_id)">
                <h5>{{news.n_title}}</h5>
                <p style="text-align: right;">{{news.n_date}}</p>
                <p style="text-indent: 2em;">{{news.n_detail.slice(0,60)}}</p>
                <!-- <p style="text-align: right;">อ่านเพิ่มเติม</p> -->
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrl(pic) {
            return require('../../assets/News/'+pic)
        },
        seethisPage(thisnews){
            this.$router.push({name:'newsandactivity',params:{NewsID:thisnews}});
        }
    },
    computed:{
        the_news(){
            return this.$store.getters.getNews
        }
    }
}
</script>
