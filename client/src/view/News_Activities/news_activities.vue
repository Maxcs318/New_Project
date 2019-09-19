<template>
  <div class="container">
    <div class="row">
      <!-- activities all pc-scale -->
      <div class="activities-pc">
        <div
          class="col-lg-12 col-12"
          style="padding-top: 70px;"
          v-for="(news,index) in the_news.slice().reverse().slice(0,1)"
          :key="index"
        >
          <div class="row" @click="seethisPage(news.n_id)">
            <div class="col-lg-2">
              <hr style="background: white" />
            </div>
            <div class="col-lg-4">
              <h5 class="head">{{news.n_title}}</h5>
              <p class="detail" style="text-align: left;">{{news.n_detail.slice(0,158)}}</p>
              <p class="date" style="text-align: left;">{{news.n_create_date.slice(0,-13)}}</p>
            </div>
            <div class="col-lg-6">
              <div class="shadow-news1"></div>
              <div class="shadow-news2"></div>
              <img
                class="img-activities"
                :src="getImgUrl(news.n_image)"
                @click="seethisPage(news.n_id)"
              />
            </div>
          </div>
        </div>
      </div>

      <!-- activities all mb-scale -->
      <div class="activities-mb">
        <div
          class="col-lg-12 col-12"
          v-for="(news,index) in the_news.slice().reverse().slice(0,1)"
          :key="index"
        >
          <div class="row" @click="seethisPage(news.n_id)">
            <div class="col-lg-6">
              <div class="shadow-news1"></div>
              <div class="shadow-news2"></div>
              <img
                class="img-activities"
                :src="getImgUrl(news.n_image)"
                @click="seethisPage(news.n_id)"
              />
            </div>
            <div class="col-12">
              <hr style="background: white" />
            </div>
            <div class="col-12">
              <h5 class="head">{{news.n_title}}</h5>
              <p class="detail" style="text-align: left;">{{news.n_detail.slice(0,158)}}</p>
              <p class="date" style="text-align: left;">{{news.n_create_date.slice(0,-13)}}</p>
            </div>
          </div>
        </div>
      </div>

      <div
        class="col-lg-6 col-12"
        @click="seethisPage(news.n_id)"
        v-for="(news,index) in the_news.slice().reverse().slice(1)"
        :key="index"
      >
        <img class="img-activities2" :src="getImgUrl(news.n_image)" />
        <h5 class="activitiesall-text2">{{news.n_title}}</h5>
        <p class="activitiesall-date2">{{news.n_create_date.slice(0,-13)}}</p>
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
    path_files() {
      return this.$store.getters.getPath_Files;
    }
  },
  created() {
    this.$store.dispatch("initDataNews");
    this.$store.dispatch("initDataFiles");
  }
};
</script>
<style scoped>
.head {
  font-style: normal;
  font-weight: 600;
  font-size: 29px;
  line-height: 100%;
  letter-spacing: 0.75px;
  color: #fff;
}
.detail {
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  margin-top: 12px;
  line-height: 150%;
  color: #fff;
}
.date {
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  line-height: 150%;
  margin-top: 32px;
  color: #d8d8d8;
}
.img-activities {
  width: 100%;
  height: 370px;
  margin-bottom: 54px;
}
.shadow-news1 {
  position: absolute;
  z-index: -1;
  opacity: 0.2;
  border: 2px solid #ffffff;
  box-sizing: border-box;
  left: 0%;
  top: 106px;
  width: 418px;
  height: 279px;
}
.shadow-news2 {
  position: absolute;
  z-index: -1;
  opacity: 0.2;
  border: 2px solid #ffffff;
  box-sizing: border-box;
  left: -3%;
  top: 125px;
  width: 418px;
  height: 279px;
}
.img-activities2 {
  width: 100%;
  height: auto;
  margin-bottom: 32px;
}
.activitiesall-text2 {
  position: absolute;
  z-index: 1;
  top: 64%;
  padding-left: 19px;
  padding-right: 19px;
  font-style: normal;
  font-weight: 600;
  font-size: 29px;
  line-height: 100%;
  display: flex;
  align-items: flex-end;
  letter-spacing: 0.75px;
  color: #ffffff;
}
.activitiesall-date2 {
  position: absolute;
  z-index: 1;
  top: 82%;
  padding-left: 19px;
  padding-right: 19px;
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  line-height: 150%;
  color: #d8d8d8;
}
.activities-pc {
  display: block;
}
.activities-mb {
  display: none;
}

@media only screen and (max-width: 600px) {
  .activities-pc {
    display: none;
  }
  .activities-mb {
    display: block;
    padding-top: 45px;
  }
  .img-activities {
    width: 100%;
    height: auto;
    margin-bottom: 24px;
  }
  .shadow-news1 {
    left: 1.75%;
    top: 103px;
    width: 80%;
    height: 60%;
  }
  .shadow-news2 {
    left: 0%;
    top: 113px;
    width: 80%;
    height: 60%;
  }
  .detail {
    margin-top: 18px;
  }
  .date {
    margin-top: 12px;
    margin-bottom: 40px;
  }
  .img-activities2 {
    width: 100%;
    height: auto;
    margin-bottom: 32px;
  }
  .activitiesall-text2 {
    top: 56%;
  }
  .activitiesall-date2 {
    top: 78%;
  }
}
</style>