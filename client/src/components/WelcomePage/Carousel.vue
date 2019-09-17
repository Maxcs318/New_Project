<template>
  <div>
    <img class="img-box" src="./../../assets/image/Backgroundbox.png" />
    <img class="mb-bg" src="./../../assets/image/mb-bg.png" />
    <!-- <div class="row"> -->
    <div class="box1">
      <div class="col-lg-5 col-xs-12">
        <label class="text1">WE”RE GAMA THAILAND</label>
        <br />
        <label
          class="text2"
        >เราคือองค์กรแหล่งนำความรู้ แลกเปลี่ยนประสบการณ์หลักสูตรบริหาร การขายระดับสูง</label>
        <br />
        <label class="text3">สมัครสมาชิกสมาคมผู้จัดการและเจ้าของสำนักงานตัวแทนประกันชีวิต (GAMA)</label>
        <br>
        <button class="btn register-btn">สมัครสมาชิก</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "carousel",
  data() {
    return {
    
    }
  },
  methods: {
    onSlideStart(slide) {
      this.sliding = true;
    },
    onSlideEnd(slide) {
      this.sliding = true;
    }
  }
};
</script>
<!-- carousel-1.vue -->