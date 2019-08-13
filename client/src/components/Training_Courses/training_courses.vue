<template>
    <div class="container">
        <h4 class="mt-3">หลักสูตร & อบรม</h4> <br>
        <div class="row">
            <div class="col-lg-3 col-xs-6" v-for="(product,index) in trainingC" :key="index">
                <img :src="getImgUrl(product.p_image)" width="100%">
                <h5>{{product.p_title}}</h5>
                <p style="text-align: right;">{{product.p_date}}</p>
                <p style="text-indent: 2em;">{{product.p_detail.slice(0,60)}}</p>
                <!-- <p style="text-align: right;">อ่านเพิ่มเติม</p> -->
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrl(pic) {
            return require('../../assets/Product/'+pic)
        }
    },
    computed:{
        trainingC(){
            return this.$store.getters.getTrainingCourse
        }
    }
}
</script>
