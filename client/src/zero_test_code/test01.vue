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
        <!-- {{Test}} -->
        <input type="text" v-model="search" class="form-control">
        <div v-for="(e, key) in listFilter" >
            {{ e.m_username }} 
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            search:''
        }
    },
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
            return this.$store.getters.getMembers
        },
        ProductAll(){
            return this.$store.getters.getProduct_Set_Category
        },
        path_files(){
            return this.$store.getters.getPath_Files
        },
        listFilter () {
            let text = this.search.trim()
            return this.Test.filter(item => {
                return item.m_username.indexOf(text) > -1
            })
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

