<template>
  <div>
    <div class="menu">
      <div class="title">MENU</div>
      <ul class="nav">
        <li>
          <h6 href="#" @click="news">News & Activity</h6>
        </li>
        <li>
          <h6 href="#" @click="article" style="margin-right: 120px">Article</h6>
        </li>
        <li>
          <h6 href="#" @click="product">Product</h6>
        </li>
        <li>
          <h6 href="#" @click="video_room">Video Room & Videos</h6>
        </li>
        <li>
          <h6 href="#" @click="list_order">Check Order</h6>
        </li>
        <li>
          <h6 href="#" @click="list_gallery">List Gallery</h6>
        </li>
        <li>
          <h6 href="#" @click="academic_article">Academic Article</h6>
        </li>
        <li>
          <h6 href="#" @click="online_journal">Online Journal</h6>
        </li>
        <li>
          <h6 href="#" @click="manage_members">Manage Members</h6>
        </li>
        <li>
          <h6 href="#" @click="research">Research</h6>
        </li>
      </ul>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-primary" @click="news">News & Activity</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-success" @click="article">Article</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-dark" @click="product">Product</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button
            type="button"
            class="form-control btn-danger"
            @click="video_room"
          >Video Room & Videos</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-warning" @click="list_order">Check Order</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control" @click="list_gallery">List Gallery</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control" @click="academic_article">Academic Article</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button
            type="button"
            class="form-control btn-warning"
            @click="online_journal"
          >Online Journal</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button
            type="button"
            class="form-control btn-danger"
            @click="manage_members"
          >Manage Members</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-dark" @click="research">Research</button>
          <br />
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-primary" @click="news">News & Activity</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-success" @click="article">Article</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-dark" @click="product">Product</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button
            type="button"
            class="form-control btn-danger"
            @click="video_room"
          >Video Room & Videos</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-warning" @click="list_order">Check Order</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control" @click="list_gallery">List Gallery</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control" @click="academic_article">Academic Article</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button
            type="button"
            class="form-control btn-warning"
            @click="online_journal"
          >Online Journal</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button
            type="button"
            class="form-control btn-danger"
            @click="manage_members"
          >Manage Members</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-dark" @click="research">Research</button>
          <br />
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-primary" @click="news">News & Activity</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-success" @click="article">Article</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-dark" @click="product">Product</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button
            type="button"
            class="form-control btn-danger"
            @click="video_room"
          >Video Room & Videos</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-warning" @click="list_order">Check Order</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control" @click="list_gallery">List Gallery</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control" @click="academic_article">Academic Article</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button
            type="button"
            class="form-control btn-warning"
            @click="online_journal"
          >Online Journal</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button
            type="button"
            class="form-control btn-danger"
            @click="manage_members"
          >Manage Members</button>
          <br />
        </div>
        <div class="col-lg-6 col-xs-12">
          <button type="button" class="form-control btn-dark" @click="research">Research</button>
          <br />
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      search: ""
    };
  },
  methods: {
    getImgUrlProduct(picP) {
      return this.path_files + "Product/" + picP;
    },
    seethisPageProduct(thisproduct) {
      this.$router.push({ name: "test02", params: { TestID: thisproduct } });
    },
    news() {
      this.$router.push("/AdminN");
    }
  },
  computed: {
    Test() {
      return this.$store.getters.getMembers;
    },
    ProductAll() {
      return this.$store.getters.getProduct_Set_Category;
    },
    path_files() {
      return this.$store.getters.getPath_Files;
    },
    listFilter() {
      let text = this.search.trim();
      return this.Test.filter(item => {
        return item.m_username.indexOf(text) > -1;
      });
    }
  },
  created() {
    this.$store.dispatch("initMembers");
    this.$store.dispatch("initDataProduct");
    this.$store.dispatch("initDataProduct_Category");
    this.$store.dispatch("initDataProduct_Image");
  }
};
</script>

<style scoped>
.menu {
  margin-top: 90px;
  font-weight: 100;
  background: #efefef;
  width: 250px;
  height: 70%;
  z-index: 100;
  padding-left: 30px;
  padding-right: 70px;
  position: fixed;
  -webkit-box-shadow: -3px 0px 5px 0px rgba(0, 0, 0, 0.2);
  box-shadow: -3px 0px 7px 8px rgba(0, 0, 0, 0.2);
  left: -210px;
  transition: 0.3s;
  color: #222;
}

.menu:hover,
.menu:focus {
  transform: translate3d(210px, 0, 0);
  animation-timing-function: 0.5s ease-in;
}
.title {
  top: 12%;
  position: absolute;
  transform: rotate(-270deg);
  left: 205px;
  font-weight: 800;
  font-size: 1.3em;
}
.nav {
  vertical-align: absolute;
  font-weight: 100;
}
ul {
  margin-top: 33px;
}
li {
  padding-bottom: 19px;
  list-style-type: none;
}
h6 {
  display: block;
  text-decoration: none;
  color: inherit;
  font-weight: 600;
  transition: 0.2s;
  cursor: pointer;
}
.nav h6:hover {
  color: #aaa;
}
</style>