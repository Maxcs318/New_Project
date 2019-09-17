<template>
  <div>
    <br />
    <div class="news">
      <div class="container">
        <!-- pc page -->
        <div class="news-pc">
          <div
            class="col-lg-12 col-md-6  "
            v-for="news in the_news.slice().reverse().slice(0,1)"
          >
            <div class="row">
              <div class="col-lg-2">
                <hr />
              </div>
              <div class="col-lg-4">
                <h5 class="head" @click="seethisPageNews(news.n_id)">{{news.n_title}}</h5>
                <p class="detail" style="text-align: left;">{{news.n_detail.slice(0,158)}}</p>
                <p class="news-date1" style="text-align: left;">{{news.n_create_date}}</p>
              </div>
              <div class="col-lg-6">
                <div class="news1"></div>
                <div class="news2"></div>
                <img
                  class="img-news"
                  :src="getImgUrl(news.n_image)"
                  style="width:100%"
                  @click="seethisPageNews(news.n_id)"
                />
              </div>
            </div>
          </div>
        </div>
        <!-- mb page -->
        <div class="news-mb">
          <div
            class="col-lg-12 col-md-6  "
            v-for="news in the_news.slice().reverse().slice(0,1)"
          >
            <div class="row">
              <div class="col-xs-12">
                <div class="news1"></div>
                <div class="news2"></div>
                <img
                  class="img-news"
                  :src="getImgUrl(news.n_image)"
                  width="100%"
                  @click="seethisPageNews(news.n_id)"
                />
              </div>
              <div class="col-xs-12">
                <h5 class="head" @click="seethisPageNews(news.n_id)">{{news.n_title}}</h5>
              </div>
              <div class="col-xs-12">
                <hr />
                <p class="detail" style="text-align: left;">{{news.n_detail.slice(0,158)}}</p>
                <p class="news-date1" style="text-align: left;">{{news.n_create_date}}</p>
              </div>
            </div>
          </div>
        </div>

        <!-- row page -->
        <div class="row">
          <div
            class="col-lg-6 col-md-6 col-xs-12  "
            v-for="news in the_news.slice().reverse().slice(1,3)"
          >
            <div class="news-2">
              <img :src="getImgUrl(news.n_image)" width="100%" @click="seethisPageNews(news.n_id)" />
              <h5 class="news-text" @click="seethisPageNews(news.n_id)">{{news.n_title}}</h5>
              <p class="news-date" style="text-align: left;">{{news.n_create_date}}</p>
            </div>
          </div>
        </div>
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
    seethisPageNews(thisnews) {
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
    }
  },
  created() {
    this.$store.dispatch("initDataNews");
  }
};
</script>
