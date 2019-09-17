<template>
  <div>
    <div class="container">
      <div class="training">
        <div class="row">
          <header class="col-lg-10 col-xs-12 header">หลักสูตรอบรม</header>
          <div class="col-lg-2 col-xs-12">
            <button class="btn-viewall">ดูทั้งหมด></button>
          </div>
        </div>
        <div class="row">
          <div
            class="col-lg-6 col-md-6"
            v-for="(product,index) in trainingCourse.slice().reverse().slice(0,4)"
            :key="index"
          >
            <div class="training-img">
              <img
                :src="getImgUrlProduct(product.p_image)"
                width="100%"
                @click="seethisPageCourse(product.p_id)"
                caption="First slide"
              />
              <h5 class="course-text" @click="seethisPageCourse(product.p_id)">{{product.p_name}}</h5>
              <p
                class="course-date"
                style="text-align: left;"
              >{{product.p_create_date.slice(0,-13)}}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    getImgUrlProduct(picP) {
      return this.path_files+'Product/'+picP
    },
    seethisPageCourse(thisproduct) {
      this.$router.push({
        name: "product",
        params: { ProductID: thisproduct }
      });
    }
  },
  computed: {
    trainingCourse() {
      var productAll = this.$store.getters.getProduct_Set_Category;
      var training_course = [];
      for (var i = 0; i < productAll.length; i++) {
        if (productAll[i].p_category == "training_course") {
          training_course.push(productAll[i]);
        }
      }
      return training_course;
    },
    path_files(){
      return this.$store.getters.getPath_Files
    }
  },
  created() {
    this.$store.dispatch("initDataProduct");
  }
};
</script>
