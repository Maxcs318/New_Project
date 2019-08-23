<template>
    <div class="container mt-3">
        <div class="row" v-if="thisProduct">
            <div class="col-lg-12 col-xs-12" >
                <center><h3>{{thisProduct.p_title}}</h3></center>
            </div>
        </div>
        <div class="row mt-3" v-if="thisProduct">
            <div class="col-lg-1 col-xs-12"></div>
            <div class="col-lg-5 col-xs-12">
                <img :src="getImgUrl(thisProduct.p_image)" width="100%">
            </div>
            <div class="col-lg-5 col-xs-12 mt-3" v-if="thisProduct">
                <p style="text-indent: 2em;">{{thisProduct.p_detail}}</p>
                <p>ราคาปกติ {{thisProduct.p_price}} ฿</p>
                <p>ราคาสำหรับสมาชิก {{thisProduct.p_price2}} ฿</p>
                <p style="text-align: right;">{{thisProduct.p_date}}</p>
                <hr>
                <div class="row">
                    <div class="col-lg-2 col-xs-12"><button class="form-control btn-danger" @click="removeproduct">-</button><br></div>
                    <div class="col-lg-4 col-xs-12"><input type="text" v-model="amount" class="form-control"><br></div>
                    <div class="col-lg-2 col-xs-12"><button class="form-control btn-success" @click="addproduct">+</button><br></div>
                    <div class="col-lg-4 col-xs-12"><button class="form-control btn-primary">สั่งซื้อ</button><br></div>
                </div>
                <div v-if="total!=0">
                    <p>ราคารวมทั้งหมด {{total}} บาท</p>
                </div>
            </div>
            <div class="col-lg-1 col-xs-12"></div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            amount:0,
            total:0
        }
    },
    methods:{
        getImgUrl(pic) {
            return require('../../assets/Product/'+pic)
        },
        addproduct(){
            this.amount = this.amount+1
        },
        removeproduct(){
            if(this.amount>0){
                this.amount = this.amount-1
            }
        }
    },
    watch:{
        amount:function(){
            if(this.amount>0){
                if(this.amount==''||this.amount==null){
                    this.amount = 0
                }

                if(this.$store.state.the_user.m_status == 'admin'){
                    this.total = this.amount*this.thisProduct.p_price2
                }else{
                    this.total = this.amount*this.thisProduct.p_price
                }
            }else{
                this.total = 0
            }
        }
    },
    computed : {
        thisProduct(){
            var ProductAll = this.$store.getters.getProduct
            var product
            for(var i=0; i<ProductAll.length; i++){
                if(ProductAll[i].p_id == this.$route.params.ProductID){
                    product = ProductAll[i]
                }
            }
            return product
        }
    }
}
</script>
