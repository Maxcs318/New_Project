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
  </div>
</template>
<script>
export default {
  methods: {
    news() {
      this.$router.push("/AdminN");
    },
    article() {
      this.$router.push("/AdminA");
    },
    product() {
      this.$router.push("/AdminP");
    },
    video_room() {
      this.$router.push("/AdminLR");
    },
    list_order() {
      this.$router.push("/AdminListOrder");
    },
    list_gallery() {
      this.$router.push("/AdminListGallery");
    },
    academic_article() {
      this.$router.push("/AdminAA");
    },
    online_journal() {
      this.$router.push("/AdminOJ");
    },
    manage_members() {
      this.$router.push("/AdminM");
    },
    research() {
      this.$router.push("/AdminR");
    }
  }
};
</script>

<style scoped>
.menu {
  margin-top: 90px;
  font-weight: 100;
  background: #efefef;
  width: 250px;
  height: 60%;
  z-index: 100;
  padding-left: 30px;
  padding-right: 70px;
  position: fixed;
  -webkit-box-shadow: -3px 0px 5px 0px rgba(0, 0, 0, 0.2);
  box-shadow: -3px 0px 7px 8px rgba(0, 0, 0, 0.2);
  left: -215px;
  transition: 0.3s;
  color: #222;
  border-radius: 4px;
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
  margin-top: 23px;
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