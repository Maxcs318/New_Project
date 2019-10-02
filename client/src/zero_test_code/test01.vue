<template>
    <div class="container ">
        <!-- <h4>Product</h4>
        <div class="row">
            <div class="col-lg-3 col-xs-12" v-for="(product,index) in ProductAll.slice().reverse()" :key="index">
                <img :src="getImgUrlProduct(product.p_image)" width="100%" @click="seethisPageProduct(product.p_id)">
                <h5 @click="seethisPageProduct(product.p_id)">{{product.p_name}}</h5>
                <p style="text-align: center;">{{product.p_price}} ฿</p>
                <p style="text-align: right;">{{product.p_category}}</p>
                <br>
            </div>
        </div> -->

        {{Test}}
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrlProduct(picP) {
            return this.path_files+'Product/'+picP
        },
        seethisPageProduct(thisproduct){
            this.$router.push({name:'test02',params:{TestID:thisproduct}});
        },
    },
    computed:{
        Test(){
            return this.$store.getters.getMember_Upgrade_Date
        },
        ProductAll(){
            return this.$store.getters.getProduct_Set_Category
        },
        path_files(){
            return this.$store.getters.getPath_Files
        }
    },
    created(){
        this.$store.dispatch("initMembers")
        this.$store.dispatch("initDataProduct")
        this.$store.dispatch("initDataProduct_Category")
        this.$store.dispatch("initDataProduct_Image")
    }
}
</script>

