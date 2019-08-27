<template>
    <div class="container mt-3">
        <center><h4>Edit Product</h4></center>
        <div class="row mt-5" v-if="thisProduct && the_user">
            <div class="col-lg-5 col-xs-12">
                <img v-if="url"  :src="url" width="100%"/>
                <img v-else :src="getImgUrl(thisProduct.p_image)" width="100%">
                <br><br>
            </div>
            <div class="col-lg-7 col-xs-12">
                <form @submit.prevent="submitProduct">                        
                    <input id="chooseImage" ref="files" style="display: none;" type="file" @change="handleFiles">

                    ชื่อสินค้า
                    <input type="text" v-model="productE.p_title" class="form-control" required>
                    <br>
                    รายระเอียด
                    <textarea v-model="productE.p_detail" class="form-control" rows="5" ></textarea>
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
                            <input type="text" v-model="productE.p_type" class="form-control" required>                                    
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-lg-6">
                            <button type="button" class="form-control btn-success col-lg-12" @click="ChooseFiles"> Change Image </button>
                            <br>
                        </div>
                        <div class="col-lg-6">
                            <button type="submit" class="form-control btn-primary col-lg-12"> Save </button>
                            <br>
                        </div>
                    </div>
                </form>                
            </div> 
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
        the_user(){
            var user = this.$store.getters.getThe_User
            if( user.m_status != 'admin' ){
                this.$router.push('/')
            }
            return user
        }
    }
}
</script>
