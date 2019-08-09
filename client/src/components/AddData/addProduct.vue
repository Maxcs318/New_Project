<template>
    <div>
        <div>
            <div class="container mt-3">
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <h4><center>เพิ่ม สินค้า</center></h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-xs-12"></div>
                    <div class="col-lg-6 col-xs-12">
                        <form @submit.prevent="submitProduct">
                            <center>                            
                                <img v-if="url"  :src="url" width="100%"/>
                            </center>
                            <br>
                            <button type="button" class="form-control btn-success col-lg-6" @click="ChooseFiles"> Choose Image </button>
                            <input id="chooseImage" ref="files" style="display: none;" type="file" @change="handleFiles">
                            <br>
                            หัวเรื่อง
                            <input type="text" v-model="product.p_title" class="form-control" required>
                            <br>
                            รายระเอียด
                            <textarea v-model="product.p_detail" class="form-control" rows="6" ></textarea>
                            <br>
                            <div class="row">
                                <div class="col-lg-6">
                                    ราคาปกติ
                                    <input type="text" v-model="product.p_price" class="form-control" required>
                                </div>
                                <div class="col-lg-6">
                                    ราคาสมาชิก
                                    <input type="text" v-model="product.p_price2" class="form-control" required>                                    
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-lg-6">
                                    จำนวนสินค้า
                                    <input type="text" v-model="product.p_amount" class="form-control" required>
                                </div>
                                <div class="col-lg-6">
                                    ประเภทสินค้า
                                    <input type="text" v-model="product.p_type" class="form-control" required>                                    
                                </div>
                            </div>
                            <div class="row mt-5">
                                <div class="col-lg-6"></div>
                                <div class="col-lg-6">
                                    <button type="submit" class="form-control btn-primary col-12"> Save </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-3 col-xs-12"></div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>

export default {
    data(){
        return{
            product:{
                p_title:'',
                p_detail:'',
                p_image:'',
                p_price:'',
                p_price2:'',
                p_amount:'',
                p_type:'',
                p_date:''
            },
            url: null,
            fileimage:''
        }
    },
    methods:{
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
            if(this.fileimage.size<10000000 && this.fileimage !=''){
                var jsonProduct = JSON.stringify(this.product)
                var FD  = new FormData()
                    FD.append('userfile',this.fileimage)
                    FD.append('product',jsonProduct)
                    this.$store.dispatch("Add_Product",FD)
                    setTimeout(()=>{
                        this.$router.push('/')
                    },500)  
                this.$swal("Save Product Success .", "", "success")
            }else{
                this.$swal("Please Choose Image .", "", "error")
            }
        }
    }
}
</script>
