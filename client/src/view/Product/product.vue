<template>
    <div class="container mt-3" v-if="thisProduct">
        <div class="row">
            <div class="col-lg-12 col-xs-12" >
                <center><h3>{{thisProduct.p_name}}</h3></center>
            </div>
        </div>
        <div class="row mt-3" v-if="thisProduct">
            <div class="col-lg-1 col-xs-12"></div>
            <div class="col-lg-5 col-xs-12">
                <img :src="getImgUrl(thisProduct.p_image)" width="100%">
                <br><br>
                <div class="row">
                    <div class="col-lg-3"  v-if="thisProduct_Image" v-for="(pi,index) in thisProduct_Image" :key="index">
                        <img :src="getImgUrl(pi.pi_name)" width="100%">
                        <br><br>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 col-xs-12 mt-3" v-if="thisProduct">
                <p style="text-indent: 2em;">{{thisProduct.p_description}}</p>
                <p style="text-align: right;">{{thisProduct.p_category}}</p>
                <p>ราคาปกติ {{thisProduct.p_price}} ฿</p>
                <p>ราคาสำหรับสมาชิก {{thisProduct.p_price2}} ฿</p>
                <p style="text-align: right;">{{thisProduct.p_date}}</p>
                <hr>
                <div class="row">
                    <div class="col-lg-2 col-xs-12"><button class="form-control btn-danger" @click="removeproduct">-</button><br></div>
                    <div class="col-lg-4 col-xs-12"><input type="text" v-model="amount" class="form-control"><br></div>
                    <div class="col-lg-2 col-xs-12"><button class="form-control btn-success" @click="addproduct">+</button><br></div>
                    <div class="col-lg-4 col-xs-12"><button class="form-control btn-primary" @click="add_to_cart(thisProduct.p_id)">Add to Cart</button><br></div>
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
            amount:1,
            total:0,
            nowcart:[]
        }
    },
    methods:{
        getImgUrl(pic) {
            return this.path_files+'Product/'+pic
        },
        addproduct(){
            this.amount = this.amount+1
        },
        removeproduct(){
            if(this.amount>0){
                this.amount = this.amount-1
            }
        },
        add_to_cart(p_id){
            var productAdd = { p_id : p_id, quantity : this.amount }
            this.$store.dispatch("Add_Cart",productAdd)
            this.$swal("Add "+this.thisProduct.p_name+" to Cart "+this.amount+ " pieces", "", "success")
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
        },
        thisProduct_Image(){
            var product_imageAll = this.$store.getters.getProduct_Image
            var product_image = []
                for(var i=0; i<product_imageAll.length; i++){
                    if(product_imageAll[i].pi_image_key == this.thisProduct.p_image_key){
                        product_image.push(product_imageAll[i])
                    }
                }
                if(product_image.length != 0){
                    return product_image  
                }else{
                    return false
                }     
        },
        path_files(){
            return this.$store.getters.getPath_Files
        }
        
    }
}
</script>
