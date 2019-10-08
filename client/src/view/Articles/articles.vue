<template>
  <div class="container" style="padding-top: 151px;">
      {{length_page}}
    <div class="row"> 
      <div
        class="col-lg-6 col-12"
        @click="seethisPage(article.a_id)"
        v-for="(article,index) in the_article.slice().reverse().slice((page*6),(page+1)*6)"
        :key="index"
        style="margin-bottom: 32px;"
      >
        <img :src="getImgUrlArticle(article.a_image)" width="100%" height="370px" />
        <h5 class="head">{{article.a_title}}</h5>
        <p class="date">{{article.a_create_date.slice(0,-13)}}</p>
        <!-- <p style="text-indent: 2em;">{{article.a_detail.slice(0,60)}}</p> -->
      </div>
    </div>
    <div class="row">
      <div class="col-lg-xs-12"  style="margin:auto;">
        <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
          <div class="btn-group mr-2" role="group" aria-label="Second group">

            <button type="button" class="btn btn-secondary" @click="seenextPage(1)"> << </button>

            <button type="button" class="btn btn-secondary" v-for=" run_page in length_page " @click="seenextPage(run_page)">{{run_page}}</button>
          
            <button type="button" class="btn btn-secondary" @click="seenextPage(1)"> >> </button>
          
          </div>
        </div>
      </div>
    </div>
    <br>
  </div>
</template>
<script>
export default {
  data(){
    return{
      page:0,
      length_page:0
    }
  },
  methods: {
    getImgUrlArticle(pic) {
      return this.path_files + "Article/" + pic;
    },
    seenextPage(num_page) {
      this.$router.push({
        name: "articles",
        params: { Page: num_page }
      });
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
      var setpage = this.$route.params.Page
      this.page = setpage - 1
      this.length_page = this.$store.getters.getArticle.length/6
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
img {
  cursor: pointer;
}

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