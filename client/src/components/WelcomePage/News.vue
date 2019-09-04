<template>
    <div>
        <br>
        <h5>ข่าวและกิจกรรมล่าสุด</h5>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6" v-for="(news,index) in the_news.slice().reverse().slice(0,4)" :key="index" >
                    <img :src="getImgUrl(news.n_image)" width="100%" @click="seethisPageNews(news.n_id)">
                    <h5 @click="seethisPageNews(news.n_id)">{{news.n_title}}</h5>
                    <p style="text-align: right;">{{news.n_date}}</p>
                    <p style="text-indent: 2em;">{{news.n_detail.slice(0,60)}}</p>
                    <!-- <p style="text-align: right;">อ่านเพิ่มเติม</p> -->
                </div>
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
        seethisPageNews(thisnews){
            this.$router.push({name:'newsandactivity',params:{NewsID:thisnews}});
        }
    },
    computed:{
        the_news(){
            return this.$store.getters.getNews
        }
    },
    created(){
        this.$store.dispatch("initDataNews")
    }
    
}
</script>
