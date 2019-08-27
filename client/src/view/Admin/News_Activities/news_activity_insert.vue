<template>
    <div>
        <div>
            <div class="container mt-3">
                <div class="row">
                    <div class="col-lg-12 col-xs-12">
                        <h4><center>เพิ่ม ข่าวสาร & กิจกรรม</center></h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-xs-12"></div>
                    <div class="col-lg-6 col-xs-12">
                        <form @submit.prevent="submitNews">
                            <center>                            
                                <img v-if="url"  :src="url" width="100%"/>
                            </center>
                            <br>
                            <button type="button" class="form-control btn-success col-lg-6" @click="ChooseFiles"> Choose Image </button>
                            <input id="chooseImage" ref="files" style="display: none;" type="file" @change="handleFiles">
                            <br>
                            หัวเรื่อง
                            <input type="text" v-model="news.n_title" class="form-control" required>
                            <br>
                            รายระเอียด
                            <textarea v-model="news.n_detail" class="form-control" rows="6" ></textarea>
                            <br>
                            <div class="row">
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
            news:{
                n_title:'',
                n_detail:'',
                n_image:'',
                n_create_date:''
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
        submitNews(){
            if(this.fileimage.size<10000000 && this.fileimage !=''){
                var jsonNews = JSON.stringify(this.news)
                var FD  = new FormData()
                    FD.append('userfile',this.fileimage)
                    FD.append('news',jsonNews)            
                    FD.append('creator',JSON.stringify(this.$store.state.log_on))
                    this.$store.dispatch("Add_News",FD)
                    setTimeout(()=>{
                        this.$router.push('/AdminN')
                    },2000)  
                this.$swal("Save News Success .", "", "success")
            }else{
                this.$swal("Please Choose Image .", "", "error")
            }
        }
    }
}
</script>
