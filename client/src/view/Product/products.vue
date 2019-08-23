<template>
    <div class="container mt-3">
        <h4>Product</h4>
        <div class="row">
            <div class="col-lg-3 col-xs-12" v-for="(product,index) in ProductAll" :key="index">
                <img :src="getImgUrlProduct(product.p_image)" width="100%" @click="seethisPageProduct(product.p_id)">
                <h5 @click="seethisPageProduct(product.p_id)">{{product.p_title}}</h5>
                <p style="text-align: center;">{{product.p_price}} ฿</p>
                <!-- <p style="text-align: right;">{{product.p_type}}</p> -->
                <!-- <p style="text-indent: 2em;">{{product.p_detail.slice(0,60)}}</p> -->
                <button class="form-control btn-primary"> สั่งซื้อ </button>
                <br>
                <div class="row" v-if="the_user.m_status == 'admin'">
                    <div class="col-lg-6 col-lg-xs-12">
                        <button class="form-control btn-success" @click="editProduct(product.p_id)"> Edit </button> <br>
                    </div>
                    <div class="col-lg-6 col-lg-xs-12">
                        <button class="form-control btn-danger"> Delete </button> <br>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrlProduct(picP) {
            return require('../../assets/Product/'+picP)
        },
        seethisPageProduct(thisproduct){
            this.$router.push({name:'product',params:{ProductID:thisproduct}});
        },
        editProduct(thisproduct){
            this.$router.push({name:'editproduct',params:{ProductID:thisproduct}});
        }
    },
    computed:{
        ProductAll(){
            return this.$store.getters.getProduct
        },
        the_user(){
            return this.$store.getters.getThe_User
        }
    },
    created(){
        this.$store.dispatch("initDataProduct")
    }
}
</script>

