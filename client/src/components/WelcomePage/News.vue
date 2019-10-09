<template>
  <div>
    <br />
    <div class="news">
      <div class="container">
        <!-- pc page -->
        <div class="news-pc">
          <div class="col-lg-12 col-12" v-for="news in the_news.slice().reverse().slice(0,1)">
            <div class="row">
              <div class="col-lg-2 col-12">
                <hr />
              </div>
              <div class="col-lg-4">
                <h5 class="head">{{news.n_title}}</h5>
                <p class="detail" style="text-align: left;">{{news.n_detail.slice(0,158)}}</p>
                <p class="news-date1" style="text-align: left;">{{news.n_create_date.slice(0,-13)}}</p>
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
          <div class="col-lg-12 col-12" v-for="news in the_news.slice().reverse().slice(0,1)">
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
              <div class="col-12">
                <h5 class="head" @click="seethisPageNews(news.n_id)">{{news.n_title}}</h5>
              </div>
              <div class="col-12">
                <hr style="width:100%" />
                <p class="detail" style="text-align: left;">{{news.n_detail.slice(0,158)}}</p>
                <p class="news-date1" style="text-align: left;">{{news.n_create_date.slice(0,-13)}}</p>
              </div>
            </div>
          </div>
        </div>

        <!-- row page -->
        <div class="row">
          <div
            class="col-lg-6 col-md-6 col-12"
            @click="seethisPageNews(news.n_id)"
            v-for="news in the_news.slice().reverse().slice(1,3)"
          >
            <div class="news-2">
              <img :src="getImgUrl(news.n_image)" width="100%" />
              <h5 class="news-text" @click="seethisPageNews(news.n_id)">{{news.n_title}}</h5>
              <p class="news-date" style="text-align: left;">{{news.n_create_date.slice(0,-13)}}</p>
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
      return this.path_files + "News/" + pic;
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
    path_files() {
      return this.$store.getters.getPath_Files;
    }
  },
  created() {
    this.$store.dispatch("initDataNews");
  }
};
</script>
<style scoped>
.news {
  position: relative;
  top: 427px;
  bottom: 60px;
}

.news-pc {
  display: block;
}

.news-mb {
  display: none;
}

.news hr {
  background-color: #fff;
}

.head {
  font-style: normal;
  font-weight: 600;
  font-size: 29px;
  line-height: 100%;
  padding-left: 19px;
  padding-right: 19px;
  letter-spacing: 0.75px;
}

.detail {
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  margin-top: 12px;
  padding-left: 19px;
  padding-right: 19px;
  line-height: 150%;
}

.news-date1 {
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  padding-left: 19px;
  padding-right: 19px;
  line-height: 150%;
  margin-top: 32px;
  color: #d8d8d8;
}

.img-news {
  width: 100%;
  cursor: pointer;
  position: relative;
  z-index: 2;
}

.news1 {
  position: absolute;
  z-index: 1;
  opacity: 0.2;
  border: 2px solid #ffffff;
  box-sizing: border-box;
  left: 0%;
  top: 86px;
  width: 80%;
  height: 80%;
}

.news2 {
  position: absolute;
  z-index: 1;
  opacity: 0.2;
  border: 2px solid #ffffff;
  box-sizing: border-box;
  left: -3%;
  top: 105px;
  width: 80%;
  height: 80%;
}

.news-2 {
  margin-top: 59px;
  cursor: pointer;
}

.news-2 img {
  width: 100%;
}

.news-text {
  position: absolute;
  top: 318px;
  left: 20px;
  padding-left: 9px;
  padding-right: 9px;
  font-style: normal;
  font-weight: 600;
  font-size: 29px;
  line-height: 100%;
  display: flex;
  align-items: flex-end;
  letter-spacing: 0.75px;
}

.news-date {
  position: absolute;
  top: 386px;
  left: 20px;
  padding-left: 9px;
  padding-right: 9px;
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  line-height: 150%;
  color: #d8d8d8;
}

@media only screen and (max-width: 1440px) {
  .news {
    top: 77px;
  }
}

@media only screen and (max-width: 600px) {
  .news {
    top: 177px;
  }

  .news-pc {
    display: none;
  }

  .news-mb {
    display: block;
    margin: 0;
  }

  .img-news {
    left: 0;
    width: 100%;
  }

  .news1 {
    width: 80%;
    height: 40%;
    left: -2%;
    top: 24%;
  }

  .news2 {
    width: 80%;
    height: 40%;
    left: -4%;
    top: 26%;
  }

  .head {
    position: absolute;
    z-index: 1;
    margin-top: -25%;
  }

  hr {
    margin-top: 50px;
    margin-left: 0px;
    width: 100%;
  }

  .detail {
    margin-top: 0px;
    padding-left: 0;
    padding-right: 0;
  }

  .news-date1 {
    margin-top: 27px;
    padding-left: 0px;
  }

  .mb-margin {
    margin-top: 290px;
  }

  .news-2 {
    margin-top: 32px;
  }

  .news-text {
    top: 175px;
    left: 19px;
    right: 19px;
  }

  .news-date {
    top: 267px;
    left: 19px;
  }
}
</style>