<template>
  <div class="container" style="padding-top: 151px;">
    <div class="row">
      <div
        class="col-lg-6 col-12"
        @click="seethisPage(article.a_id)"
        v-for="(article,index) in the_article.slice().reverse()"
        :key="index"
        style="margin-bottom: 32px;"
      >
        <img :src="getImgUrlArticle(article.a_image)" width="100%" height="370px" />
        <h5 class="head">{{article.a_title}}</h5>
        <p class="date">{{article.a_create_date.slice(0,-13)}}</p>
        <!-- <p style="text-indent: 2em;">{{article.a_detail.slice(0,60)}}</p> -->
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    getImgUrlArticle(pic) {
      return this.path_files + "Article/" + pic;
    },
    seethisPage(thisarticle) {
      this.$router.push({
        name: "article",
        params: { ArticleID: thisarticle }
      });
    }
  },
  computed: {
    the_article() {
      return this.$store.getters.getArticle;
    },
    path_files() {
      return this.$store.getters.getPath_Files;
    }
  },
  created() {
    this.$store.dispatch("initDataArticle");
    this.$store.dispatch("initDataFiles");
  }
};
</script>
<style scoped>
.head {
  position: absolute;
  z-index: 1;
  top: 70%;
  padding-left: 19px;
  padding-right: 19px;
  font-style: normal;
  font-weight: 600;
  font-size: 2em;
  line-height: 100%;
  display: flex;
  align-items: flex-end;
  letter-spacing: 0.75px;
}
.date {
  position: absolute;
  z-index: 1;
  top: 90%;
  padding-left: 19px;
  padding-right: 19px;
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  line-height: 150%;
  color: #d8d8d8;
}
@media only screen and (max-width: 600px) {
  img {
    height: auto;
  }
  .head {
    top: 45%;
  }
  .date {
    top: 85%;
  }
}
</style>