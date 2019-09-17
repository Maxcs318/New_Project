<template>
  <div class="container">
    <br />
    <br />
    <br />
    <br />
    <h4 class="mt-3">ข่าวสาร & กิจกรรม</h4>
    <br />
    <div class="row">
      <div
        class="col-lg-6 col-xs-6"
        v-for="(news,index) in the_news.slice().reverse()"
        :key="index"
      >
        <img :src="getImgUrl(news.n_image)" style="width:100%; height:370px;" @click="seethisPage(news.n_id)" />
        <h5>{{news.n_title}}</h5>
        <p>{{news.n_create_date}}</p>
        <!-- <p>{{news.n_detail.slice(0,55)}}</p> -->
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    getImgUrl(pic) {
      return this.path_files+'News/'+pic
    },
    seethisPage(thisnews) {
      this.$router.push({
        name: "newsandactivity",
        params: { NewsID: thisnews }
      });
    }
  },
  computed: {
    the_news() {
      return this.$store.getters.getNews;
    },
    path_files(){
      return this.$store.getters.getPath_Files
    },
  },
  created() {
    this.$store.dispatch("initDataNews");
    this.$store.dispatch("initDataFiles");
  }
};
</script>
