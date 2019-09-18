<template>
  <div>
    <div class="book">
      <div class="container">
        <div class="row">
          <label class="col-lg-10 col-xs-12 header">หนังสือ</label>
          <div class="col-lg-2">
            <button class="btn-viewall">ดูทั้งหมด></button>
          </div>
        </div>
        <div class="row justify-content-around">
          <div
            class="col-lg-3 col-md-6 col-xs-6"
            v-for="(product,index) in book.slice().reverse().slice(0,4)"
            :key="index"
          >
            <img
              class="rounded mx-auto d-block"
              :src="getImgUrlProduct(product.p_image)"
              width="100%"
              @click="seethisPageBook(product.p_id)"
            />
            <h5 class="book-detail" @click="seethisPageBook(product.p_id)">{{product.p_name}}</h5>
            <!-- <p style="text-align: right;">{{product.p_create_date}}</p> -->
            <!-- <p style="text-align: right;">{{product.p_category}}</p> -->
            <p class="price" style="text-align: center;">฿ {{product.p_price}}</p>
            <!-- <p style="text-indent: 2em;">{{product.p_description.slice(0,60)}}</p> -->
            <!-- <p style="text-align: right;">อ่านเพิ่มเติม</p> -->
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
      return this.path_files + "Product/" + picP;
    },
    seethisPageBook(thisproduct) {
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
.book {
  position: relative;
  margin-top: 126px;
  background: linear-gradient(
    180deg,
    rgba(255, 255, 255, 0) 0%,
    rgba(255, 255, 255, 0.1) 48.44%,
    rgba(242, 242, 242, 0) 100%
  );
}

.rounded {
  background: #d8d8d8;
  box-shadow: 0px 4px 30px rgba(0, 0, 0, 0.2);
}

.header {
  font-style: normal;
  margin-bottom: 34px;
  font-weight: 600;
  font-size: 29px;
  line-height: 120%;
  color: rgba(255, 255, 255, 0.3);
}

.book-detail {
  text-align: center;
  font-style: normal;
  font-weight: 600;
  font-size: 18px;
  margin-top: 20px;
  line-height: 150%;
  text-align: center;
  color: #fff;
}

.btn-viewall {
  background: #576574;
  border: none;
  border-radius: 14px;
  font-style: normal;
  font-weight: 600;
  font-size: 18px;
  padding: 2px 14px;
  line-height: 150%;
  margin-left: 63px;
  text-align: right;
  color: #fff;
}

.price {
  font-style: normal;
  font-weight: 600;
  font-size: 18px;
  line-height: 150%;
  margin-bottom: 95px;
  color: #eb1010;
}

@media only screen and (max-width: 600px) {
  .book {
    margin-top: 66px;
  }
}
</style>