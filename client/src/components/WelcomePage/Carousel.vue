<template>
  <div>
    <img class="img-box" :src="path_files+'background_img/Backgroundbox.png'" />
    <img class="mb-bg" :src="path_files+'background_img/mb-bg.png'" />
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
        <br />
        <button class="btn register-btn">สมัครสมาชิก</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "carousel",
  data() {
    return {};
  },
  computed: {
    path_files() {
      return this.$store.getters.getPath_Files;
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
<style scoped>
.box1 {
  padding-left: 106px;
  padding-top: 74px;
}

.img-box {
  position: absolute;
  width: 100%;
  margin: 0;
  padding: 0;
}

.box1 .text1 {
  margin-top: 146px;
  font-style: normal;
  font-weight: normal;
  font-size: 29px;
  line-height: 100%;
  letter-spacing: 0.75px;
  color: #fff;
}

.box1 .text2 {
  margin-top: 7px;
  font-style: normal;
  font-weight: 600;
  font-size: 47px;
  line-height: 100%;
  letter-spacing: -0.25px;
  color: #fff;
}

.box1 .text3 {
  margin-top: 24px;
  font-style: normal;
  font-weight: normal;
  font-size: 18px;
  line-height: 150%;
  color: #fff;
}

.register-btn {
  background: #eecd02;
  border-radius: 29px;
  border: none;
  margin-top: 22px;
  padding: 9px 31px;
  font-style: normal;
  font-weight: 600;
  font-size: 18px;
  line-height: 150%;
  text-align: center;
  color: #093f84;
  border-radius: 29px;
}

.mb-bg {
  display: none;
}

@media only screen and (max-width: 600px) {
  .img-box {
    display: none;
  }

  .mb-bg {
    position: absolute;
    display: block;
    width: 100%;
  }

  .box1 {
    padding-left: 10px;
    padding-top: 24px;
  }

  .box1 .text2 {
    font-size: 33px;
  }
}
</style>