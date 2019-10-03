<template>
  <div>
    <div class="container" style="padding-top: 151px;">
      <div class="row">
        <div class="col-lg-3 col-6" v-for="(product,index) in book.slice().reverse()" :key="index">
          <img
            class="book-img"
            :src="getImgUrlProduct(product.p_image)"
            @click="seethisPage(product.p_id)"
          />
          <h5 class="book-name">{{product.p_name}}</h5>
          <!-- <p style="text-align: right;">{{product.p_date}}</p> -->
          <p class="book-price">{{product.p_price}} ฿</p>
          <!-- <p style="text-indent: 2em;">{{product.p_description.slice(0,60)}}</p> -->
          <!-- <button class="form-control btn-primary"> สั่งซื้อ </button> -->
          <br />
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    getImgUrlProduct(pic) {
      return this.path_files + "Product/" + pic;
    },
    seethisPage(thisproduct) {
      this.$router.push({
        name: "product",
        params: { ProductID: thisproduct }
      });
    }
  },
  computed: {
    book() {
      var productAll = this.$store.getters.getProduct_Set_Category;
      var book = [];
      for (var i = 0; i < productAll.length; i++) {
        if (productAll[i].p_category == "book") {
          book.push(productAll[i]);
        }
      }
      return book;
    },
    path_files() {
      return this.$store.getters.getPath_Files;
    }
  },
  created() {
    this.$store.dispatch("initDataProduct");
  }
};
</script>
<style scoped>
.book-img {
  width: 80%;
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.book-name {
  font-style: normal;
  font-weight: 600;
  font-size: 18px;
  line-height: 150%;
  text-align: center;
}
.book-price {
  font-style: normal;
  font-weight: 600;
  font-size: 18px;
  line-height: 150%;
  text-align: center;
  color: #f56b6b;
}
</style>