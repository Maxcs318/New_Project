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