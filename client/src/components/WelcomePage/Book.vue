<template>
    <div>
        <br>
        <h5>หนังสือ</h5>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6" v-for="(product,index) in book.slice().reverse().slice(0,4)" :key="index">
                    <img :src="getImgUrlProduct(product.p_image)" width="100%" @click="seethisPageBook(product.p_id)">
                    <h5 @click="seethisPageBook(product.p_id)">{{product.p_name}}</h5>
                    <p style="text-align: right;">{{product.p_date}}</p>
                    <p style="text-align: right;">{{product.p_category}}</p>
                    <!-- <p style="text-indent: 2em;">{{product.p_description.slice(0,60)}}</p> -->
                    <!-- <p style="text-align: right;">อ่านเพิ่มเติม</p> -->
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
        seethisPageBook(thisproduct){
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
