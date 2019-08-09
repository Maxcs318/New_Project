<template>
    <div>
        <br>
        <h5>หนังสือ</h5>
        <div class="container">
            <!-- {{this.$store.getters.getBook}} -->
            <div class="row">
                <div class="col-lg-3 col-md-6" v-for="(product,index) in this.$store.state.product.slice(0,4)" :key="index">
                    <img :src="getImgUrlProduct(product.p_image)" width="100%">
                    <h5>{{product.p_title}}</h5>
                    <p style="text-align: right;">{{product.p_date}}</p>
                    <p style="text-indent: 2em;">{{product.p_detail.slice(0,60)}}</p>
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
            return require('../../../assets/Product/'+picP)
        }
    }
    
}
</script>
