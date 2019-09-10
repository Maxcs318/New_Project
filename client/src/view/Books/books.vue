<template>
    <div class="container">
        <h4 class="mt-3">หนังสือ</h4> <br>
        <div class="row">
            <div class="col-lg-3 col-md-6" v-for="(product,index) in book.slice().reverse()" :key="index">
                <img :src="getImgUrlProduct(product.p_image)" width="100%" @click="seethisPage(product.p_id)">
                <h5>{{product.p_name}}</h5>
                <!-- <p style="text-align: right;">{{product.p_date}}</p> -->
                <p style="text-align: center;">{{product.p_price}} ฿</p>
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
        getImgUrlProduct(pic) {
            return require('../../assets/Product/'+pic)
        },
        seethisPage(thisproduct){
            this.$router.push({name:'product',params:{ProductID:thisproduct}});
        }
    },
    computed:{
        book(){
            var productAll = this.$store.getters.getProduct_Set_Category
            var book = []
                for(var i=0; i<productAll.length; i++){
                    if(productAll[i].p_category == 'book'){
                        book.push(productAll[i])
                    }
                }
            return book
        }
    },
    created(){
        this.$store.dispatch("initDataProduct")
    }
}
</script>
