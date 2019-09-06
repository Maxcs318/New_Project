<template>
    <div class="container mt-3">
        <center><h4>Edit Product</h4></center>
        <div class="row mt-5" v-if="thisProduct && the_user">
            <div class="col-lg-3 col-xs-12"></div>
            <div class="col-lg-6 col-xs-12">
                <img v-if="url"  :src="url" width="100%"/>
                <img v-else :src="getImgUrl(thisProduct.p_image)" width="100%">
                <br><br>
                <button type="button" class="form-control btn-success col-lg-12" @click="ChooseFiles"> Change Preview Image </button>
                <br>
                <form @submit.prevent="submitProduct">                        
                    <input id="chooseImage" ref="files" style="display: none;" type="file" @change="handleFiles">

                    ชื่อสินค้า
                    <input type="text" v-model="productE.p_name" class="form-control" required>
                    <br>
                    รายระเอียด
                    <textarea v-model="productE.p_description" class="form-control" rows="5" ></textarea>
                    <br>
                    <div class="row">
                        <div class="col-lg-6">
                            ราคาปกติ
                            <input type="text" v-model="productE.p_price" class="form-control" required>
                        </div>
                        <div class="col-lg-6">
                            ราคาสมาชิก
                            <input type="text" v-model="productE.p_price2" class="form-control" required>                                    
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-lg-6">
                            จำนวนสินค้า
                            <input type="text" v-model="productE.p_amount" class="form-control" required>
                        </div>
                        <div class="col-lg-6">
                            ประเภทสินค้า
                            <select v-model="productE.p_category" class="form-control" required>
                                <option v-for="(pc,index) in product_category" :key="index" :value="pc.pc_id" >
                                    {{ pc.pc_title }}
                                </option>
                            </select>
                        </div>
                        <!-- image in this product -->
                    </div> <br>
                    <div class="row" v-if="thisProduct_Image">
                        <h5 class="col-lg-12">Another Image</h5>
                        <div class="col-lg-3" v-for="(pi,index) in thisProduct_Image" :key="index">
                            <img :src="getImgUrl(pi.pi_name)" width="100%"> 
                            <button type="button" class="form-control btn-danger" @click="DeleteProduct_Image(pi.pi_id)">Delete</button>
                            <br><br>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-lg-6">
                            <button type="button" class="form-control btn-success col-lg-12" > Add Another Image </button>
                            <br>
                        </div>
                        <div class="col-lg-6">
                            <button type="submit" class="form-control btn-primary col-lg-12"> Save </button>
                            <br>
                        </div>
                    </div>
                </form>                
            </div>
            <div class="col-lg-3 col-xs-12"></div>
 
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            productE:'',
            url: null,
            fileimage:''
        }
    },
    methods:{
        getImgUrl(pic) {
            return require('../../../assets/Product/'+pic)
        },
        ChooseFiles(){
            document.getElementById('chooseImage').click()
        },
        handleFiles(e){
            const file = e.target.files[0]
            this.url = URL.createObjectURL(file)
            let uploadedFiles = this.$refs.files.files[0]
            this.fileimage = uploadedFiles
            if(this.fileimage.size>10000000){
                this.fileimage = []
                this.url = null
                this.$swal('Your file is larger than 10 MB. Sorry Choose Again !!!')
            }
        },
        DeleteProduct_Image(product_imageID){
            // console.log(product_imageID)
            var FD_delete  = new FormData()
                FD_delete.append('product_imageID',product_imageID)
                FD_delete.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$store.dispatch("Delete_Product_Image",FD_delete)  
        },
        submitProduct(){
                var jsonProduct = JSON.stringify(this.productE)
                var FD  = new FormData()
                    if(this.url != null || this.url!= ''){
                        FD.append('userfile',this.fileimage)
                    }
                    FD.append('product',jsonProduct)            
                    FD.append('creator',JSON.stringify(this.$store.state.log_on))
                    this.$store.dispatch("Edit_Product",FD)
                    setTimeout(()=>{
                        this.$router.push('/AdminP')
                    },2000)  
                this.$swal("Edit Product Success .", "", "success")
        }
    },
    computed : {
        thisProduct(){
            var productAll = this.$store.getters.getProduct
            var product 
            for(var i=0; i<productAll.length; i++){
                if(productAll[i].p_id == this.$route.params.ProductID){
                    product = productAll[i]
                }
            }
            this.productE = product 
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
        the_user(){
            var user = this.$store.getters.getThe_User
            if( user.m_status != 'admin' ){
                this.$router.push('/')
            }
            return user
        },
        product_category(){
            return this.$store.getters.getProduct_Category
        }
    }
}
</script>
