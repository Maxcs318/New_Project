<template>
  <div class="container" style="padding-top: 151px;">
      <!-- {{length_page}} -->
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
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 col-xs-12" style="margin: auto 0;">

        <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
          <div class="btn-group mr-2" role="group" aria-label="Second group">
            <button type="button" class="btn btn-secondary" @click="seenextPage(1)"> << </button>
            <button type="button" class="btn btn-secondary" 
            v-for=" (run_page,index) in length_page " @click="seenextPage(run_page)" v-bind:class="{ active: isActive[index+1] }">
              {{run_page}}
            </button>
            <button type="button" class="btn btn-secondary" @click="seenextPage(1)"> >> </button>    
          </div>
        </div>
        
        <!-- <nav aria-label="Page navigation example" style="cursor:pointer;">
          <ul class="pagination justify-content-end">
            <li class="page-item"><h5 class="page-link" @click="seenextPage(1)"> << </h5></li>

            <li class="page-item " v-bind:class="{ active: isActive }" v-for=" run_page in length_page " @click="seenextPage(run_page)">
              <h5 class="page-link">{{run_page}}</h5>
            </li>

            <li class="page-item"><h5 class="page-link" @click="seenextPage(1)"> >> </h5></li>
          </ul>
        </nav>
        {{isActive}} -->

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
      length_page:0,
      isActive:[]
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
      var articles = this.$store.getters.getArticle
      this.page = setpage - 1
      this.length_page = Math.ceil(articles.length/6) // set page all
      this.isActive = []
        for(var i=0; i<= Math.ceil(articles.length/6) ;i++){
          if(i==this.$route.params.Page){
            this.isActive.push(true)
          }else{
            this.isActive.push(false)
          }
        }
      return articles
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