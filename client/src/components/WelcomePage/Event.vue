<template>
  <div>
    <div class="event">
      <div class="container">
        <h1>ภาพกิจกรรมของ GAMA</h1>
        <div class="row">
          <div
            class="col-lg-3 col-6"
            v-for="(gallery,index) in Gallery.slice().reverse().slice(0,4)"
            :key="index"
            @click="seethisGallery(gallery.g_id)"
          >
            <img :src="getImgUrlGallery(gallery.g_image)" />
            <div class="training-block1"></div>
            <div class="training-block2"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    getImgUrlGallery(pic) {
      return this.path_files + "Gallery/" + pic;
    },
    seethisGallery(this_Gallery) {
      this.$router.push({
        name: "gallery",
        params: { GalleryID: this_Gallery }
      });
    }
  },
  computed: {
    path_files() {
      return this.$store.getters.getPath_Files;
    },
    Gallery() {
      return this.$store.getters.getGallery;
    }
  },
  created() {
    this.$store.dispatch("initDataGallery");
    this.$store.dispatch("initDataGallery_Image");
  }
};
</script>
<style scoped>
.event {
  margin-top: 131px;
  height: 331px;
  background: linear-gradient(
    180deg,
    rgba(255, 255, 255, 0) 0%,
    rgba(255, 255, 255, 0.1) 48.44%,
    rgba(242, 242, 242, 0) 100%
  );
}

.event h1 {
  font-style: normal;
  font-weight: 600;
  font-size: 29px;
  line-height: 120%;
  text-align: center;
  color: rgba(255, 255, 255, 0.3);
}

.event img {
  position: relative;
  width: 100%;
  cursor: pointer;
  display: block;
  margin-top: 29px;
  margin-left: auto;
  margin-right: auto;
  background: rgba(56, 105, 173, 0.131938);
  border-radius: 4px;
}

.event img:hover {
  transition: 0.5s;
  border: 5px solid #fff;
}

.training-block1 {
  position: absolute;
  z-index: -1;
  box-sizing: border-box;
  left: 8%;
  top: 20%;
  width: 90%;
  height: 85%;
  background: rgba(255, 255, 255, 0.131938);
  border-radius: 4px;
}

.training-block2 {
  position: absolute;
  z-index: -1;
  box-sizing: border-box;
  left: 12%;
  top: 25%;
  width: 90%;
  height: 85%;
  background: rgba(255, 255, 255, 0.131938);
  border-radius: 4px;
}

@media only screen and (max-width: 600px) {
  .event img {
    width: 100%;
  }

  .training-block1 {
    left: 11%;
    top: 24%;
    width: 85%;
    height: 80%;
  }

  .training-block2 {
    left: 13%;
    top: 28%;
    width: 85%;
    height: 80%;
  }
}
</style>