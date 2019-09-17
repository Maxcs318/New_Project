<template>
    <div class="container ">
        <h4>Product</h4>
        <div class="row">
            <div class="col-lg-3 col-xs-12" v-for="(product,index) in ProductAll.slice().reverse()" :key="index">
                <img :src="getImgUrlProduct(product.p_image)" width="100%" @click="seethisPageProduct(product.p_id)">
                <h5 @click="seethisPageProduct(product.p_id)">{{product.p_name}}</h5>
                <p style="text-align: center;">{{product.p_price}} ฿</p>
                <p style="text-align: right;">{{product.p_category}}</p>
                <!-- <p style="text-indent: 2em;">{{product.p_description.slice(0,60)}}</p> -->
                <!-- <button class="form-control btn-primary"> สั่งซื้อ </button> -->
                <br>
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrlProduct(picP) {
            return this.path_files+'Product/'+picP
        },
        seethisPageProduct(thisproduct){
            this.$router.push({name:'product',params:{ProductID:thisproduct}});
        },
    },
    computed:{
        ProductAll(){
            return this.$store.getters.getProduct_Set_Category
        },
        path_files(){
            return this.$store.getters.getPath_Files
        }
    },
    created(){
        this.$store.dispatch("initDataProduct")
        this.$store.dispatch("initDataProduct_Category")
        this.$store.dispatch("initDataProduct_Image")
    }
}
</script>

