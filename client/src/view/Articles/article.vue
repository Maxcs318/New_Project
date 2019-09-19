<template>
  <div class="container">
    <div class="row" style="padding-top: 70px;">
      <div class="col-lg-2 col-xs-12"></div>
      <div class="col-lg-8 col-xs-12" v-if="thisArticle != null">
        <img :src="getImgUrl(thisArticle.a_image)" width="100%" />
        <h5 class="head">{{thisArticle.a_title}}</h5>
        <p class="date">{{thisArticle.a_create_date.slice(0,-13)}}</p>
        <p class="detail">{{thisArticle.a_detail}}</p>
        <div v-if="thisFiles != null" v-for="(file,index) in thisFiles" :key="index">
          <a :href="loadFile(file.f_name)" download>Dowload File {{index+1}}</a>
          {{file.f_title}}
          <br />
        </div>
      </div>
      <div class="col-lg-2 col-xs-12"></div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    getImgUrl(pic) {
      return this.path_files + "Article/" + pic;
    },
    loadFile(fi) {
      return this.path_files + "Files_Upload/" + fi;
    }
  },
  computed: {
    path_files() {
      return this.$store.getters.getPath_Files;
    },
    thisArticle() {
      var articleAll = this.$store.getters.getArticle_Set_Category;
      var article = null;
      for (var i = 0; i < articleAll.length; i++) {
        if (articleAll[i].a_id == this.$route.params.ArticleID) {
          article = articleAll[i];
        }
      }
      return article;
    },
    thisFiles() {
      var filesAll = this.$store.getters.getFiles;
      var files_article = [];
      for (var i = 0; i < filesAll.length; i++) {
        if (filesAll[i].f_key == this.thisArticle.a_file_key) {
          files_article.push(filesAll[i]);
        }
      }
      if (files_article.length != 0) {
        return files_article;
      } else {
        return false;
      }
    }
  }
};
</script>
<style scoped>
.head {
  font-style: normal;
  font-weight: 600;
  font-size: 29px;
  line-height: 120%;
  letter-spacing: 0.75px;
  padding-top: 24px;
}
.date {
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  line-height: 150%;
  color: #d8d8d8;
  padding-top: 36px;
}
.detail {
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  line-height: 150%;
  color: #e0e0e0;
  padding-top: 21px;
  padding-bottom: 30px;
}
</style>