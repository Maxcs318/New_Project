<template>
    <div>
        <br>
        <h5>ข่าวและกิจกรรมล่าสุด</h5>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-6 mt-3" v-for="news in the_news.slice().reverse().slice(0,1)">
                    <div class="row">
                        <div class="col-lg-6">
                            <h5 @click="seethisPageNews(news.n_id)">{{news.n_title}}</h5>
                            <p style="text-align: right;">{{news.n_create_date}}</p>
                            <p style="text-indent: 2em;">{{news.n_detail.slice(0,60)}}</p>
                        </div>
                        <div class="col-lg-6">
                            <img :src="getImgUrl(news.n_image)" width="100%" @click="seethisPageNews(news.n_id)">
                        </div>
                    </div>                    
                </div>
                <div class="col-lg-6 col-md-6 mt-3" v-for="news in the_news.slice().reverse().slice(1,3)">
                    <img :src="getImgUrl(news.n_image)" width="100%" @click="seethisPageNews(news.n_id)">
                    <h5 @click="seethisPageNews(news.n_id)">{{news.n_title}}</h5>
                    <p style="text-align: right;">{{news.n_create_date}}</p>
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
            return this.path_files+'News/'+pic
        },
        seethisPageNews(thisnews){
            this.$router.push({name:'newsandactivity',params:{NewsID:thisnews}});
        }
    },
    computed:{
        the_news(){
            return this.$store.getters.getNews
        },
        path_files(){
            return this.$store.getters.getPath_Files
        }
    },
    created(){
        this.$store.dispatch("initDataNews")
    }
    
}
</script>
