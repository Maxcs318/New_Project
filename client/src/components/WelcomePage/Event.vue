<template>
  <div>
    <div class="event">
      <div class="container">
        <h1>ภาพกิจกรรมของ GAMA</h1>
        <div class="row">
          <div class="col-lg-3 col-6">
            <div class="training-block1"></div>
            <div class="training-block2"></div>
            <img :src="path_files+'event_img/event1.png'" />
          </div>
          <div class="col-lg-3 col-6">
            <div class="training-block1"></div>
            <div class="training-block2"></div>
            <img :src="path_files+'event_img/event2.png'" />
          </div>
          <div class="col-lg-3 col-6 mb-mg4">
            <div class="training-block1"></div>
            <div class="training-block2"></div>
            <img :src="path_files+'event_img/event3.png'" />
          </div>
          <div class="col-lg-3 col-6 mb-mg4">
            <div class="training-block1"></div>
            <div class="training-block2"></div>
            <img :src="path_files+'event_img/event4.png'" />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  computed: {
    path_files() {
      return this.$store.getters.getPath_Files;
    }
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
  width: 253px;
  display: block;
  margin-top: 29px;
  margin-left: auto;
  margin-right: auto;
  background: rgba(56, 105, 173, 0.131938);
  border-radius: 4px;
}

.training-block1 {
  position: absolute;
  box-sizing: border-box;
  left: 7.5%;
  top: 35px;
  width: 253px;
  height: 190px;
  background: rgba(255, 255, 255, 0.131938);
  border-radius: 4px;
}

.training-block2 {
  position: absolute;
  box-sizing: border-box;
  left: 10.5%;
  top: 43px;
  width: 253px;
  height: 190px;
  background: rgba(255, 255, 255, 0.131938);
  border-radius: 4px;
}

@media only screen and (max-width: 600px) {
  .event img {
    width: 100%;
  }

  .training-block1 {
    margin-left: 3px;
    margin-top: 3px;
    width: 86%;
    height: 80%;
  }

  .training-block2 {
    margin-left: 3px;
    margin-top: 3px;
    width: 86%;
    height: 80%;
  }
}
</style>