<template>
  <div class="container" style="padding-top: 151px;">
    <h4>บทความวิชาการ</h4>
    <div class="row">
      <div
        class="col-lg-6 col-12"
        v-for="(academic_article,index) in the_academic_article.slice().reverse()"
        :key="index"
        @click="seethisPage(academic_article.aa_id)"
        style="margin-bottom: 32px;"
      >
        <img :src="getImgUrlArticle(academic_article.aa_image)" width="100%" height="370px" />
        <h5 class="head">{{academic_article.aa_title}}</h5>
        <p class="date">{{academic_article.aa_create_date.slice(0,-13)}}</p>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    getImgUrlArticle(pic) {
      return this.path_files + "Academic_Article/" + pic;
    },
    seethisPage(thisarticle) {
      this.$router.push({name: "academic_article",params: { AcademicArticleID: thisarticle }});
    }
  },
  computed: {
    the_academic_article() {
      return this.$store.getters.getAcademic_Article_Set_Category;
    },
    path_files() {
      return this.$store.getters.getPath_Files;
    }
  },
  created() {
    this.$store.dispatch("initDataAcademic_Article")
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