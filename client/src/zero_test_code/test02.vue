<template>
    <div class="container " v-if="product">
        <div class="row">
            {{product}}
            <div class="col-lg-12 col-xs-12" >
                <center><h3>{{product.p_name}}</h3></center>
            </div>
        </div>
        <div class="row  " v-if="product">
            <div class="col-lg-1 col-xs-12"></div>
            <div class="col-lg-5 col-xs-12">
                <img :src="getImgUrl(product.p_image)" width="100%">
                <br><br>
                <!-- <div class="row">
                    <div class="col-lg-3"  v-if="product_Image" v-for="(pi,index) in product_Image" :key="index">
                        <img :src="getImgUrl(pi.pi_name)" width="100%">
                        <br><br>
                    </div>
                </div> -->
            </div>
            <div class="col-lg-5 col-xs-12  " v-if="product">
                <p style="text-indent: 2em;">{{product.p_description}}</p>
                <p style="text-align: right;">{{product.p_category}}</p>
                <p>ราคาปกติ {{product.p_price}} ฿</p>
                <p>ราคาสำหรับสมาชิก {{product.p_price2}} ฿</p>
                <p style="text-align: right;">{{product.p_date}}</p>
                <hr>
                <div class="row">
                    <div class="col-lg-2 col-xs-12"><button class="form-control btn-danger" @click="removeproduct">-</button><br></div>
                    <div class="col-lg-4 col-xs-12"><input type="text" v-model="amount" class="form-control"><br></div>
                    <div class="col-lg-2 col-xs-12"><button class="form-control btn-success" @click="addproduct">+</button><br></div>
                    <div class="col-lg-4 col-xs-12"><button class="form-control btn-primary" @click="add_to_cart(product.p_id)">Add to Cart</button><br></div>
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
import axios from 'axios'

export default {
    data(){
        return{
            product:null,
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
            this.$swal("Add "+this.product.p_name+" to Cart "+this.amount+ " pieces", "", "success")
        }
    },
    watch:{
        amount:function(){
            if(this.amount>0){
                if(this.amount==''||this.amount==null){
                    this.amount = 0
                }

                if(this.$store.state.the_user.m_status == 'admin'){
                    this.total = this.amount*this.product.p_price2
                }else{
                    this.total = this.amount*this.product.p_price
                }
            }else{
                this.total = 0
            }
        }
    },
    mounted () {
            var FD  = new FormData()
                FD.append('productID',this.$route.params.TestID)            
                axios.post('http://gamaproject.vue.com/product/select_this_product',FD)
                .then(response =>(this.product = response.data))
    },
    computed:{
        path_files(){
            return this.$store.getters.getPath_Files
        },
    
    }
}
</script>
