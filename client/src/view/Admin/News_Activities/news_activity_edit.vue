<template>
    <div class="container mt-3">
        <center><h4>Edit News</h4></center>
        <div class="row mt-5" v-if="thisNews && the_user">
            <div class="col-lg-5 col-xs-12">
                <img v-if="url"  :src="url" width="100%"/>
                <img v-else :src="getImgUrl(thisNews.n_image)" width="100%">
                <br><br>
                <!-- {{url}} -->
            </div>
            <div class="col-lg-7 col-xs-12">
                <form @submit.prevent="submitNews">                        
                    <input id="chooseImage" ref="filesimage" style="display: none;" type="file" @change="handleFilesImage">

                    หัวเรื่อง
                    <input type="text" v-model="newsE.n_title" class="form-control" required>
                    <br>
                    รายระเอียด
                    <textarea v-model="newsE.n_detail" class="form-control" rows="6" ></textarea>
                    <br>
                    <div v-if="thisFiles != null" v-for="(file,run) in thisFiles"  >
                        <a :href="loadFile(file.f_title)" download> Dowload File {{run+1}}</a> {{file.f_title}}<br>
                    </div>
                    <br>
                            <h5>Files [ {{files.length}} ] Size Files All [ {{max_size_file}} byte ]</h5>
                            <br>
                            <div class="row" v-for="(f,index) in files" :key="index" style="text-align: left; width: 100%;">
                                <div class="col-lg-10">
                                    <b> {{index+1}}. File  </b> {{files[index].name }}
                                    <b> Size </b>{{files[index].size}} byte
                                </div>
                                <div class="col-lg-2">
                                    <button type="button" class="form-control btn-danger" 
                                    @click="RemoveRow(index)">X</button> <br>
                                </div>
                            </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <button type="button" class="form-control btn-success col-lg-12" @click="ChooseFilesImage"> Change Image </button>
                            <br>
                        </div>
                        <div class="col-lg-6">
                            <input type="file" ref="files" style="display: none;" id="FileUpload1" @change="handleFileUpload" multiple>
                            <button type="button" class="form-control btn-primary col-lg-12" @click="ChooseFiles"> Choose Files </button>
                            <br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
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
            newsE:'',
            url: null,
            fileimage:'',
            files : [],
            max_size_file : 0,
        }
    },
    methods:{
        getImgUrl(pic) {
            return require('../../../assets/News/'+pic)
        },
        loadFile(fi){
            return require('../../../assets/Files_Upload/'+fi)
        },
        // choose image
        ChooseFilesImage(){
            document.getElementById('chooseImage').click()
        },
        handleFilesImage(e){
            const file = e.target.files[0]
            this.url = URL.createObjectURL(file)
            let uploadedFiles = this.$refs.filesimage.files[0]
            this.fileimage = uploadedFiles
            if(this.fileimage.size>10000000){
                this.fileimage = []
                this.url = null
                this.$swal('Your file is larger than 10 MB. Sorry Choose Again !!!')
            }
        },
        // choose files
        ChooseFiles(){
            document.getElementById('FileUpload1').click()
        },
        handleFileUpload(event){
            this.files = []
            this.Datafile = []
            var i=0
            let uploadedFiles = this.$refs.files.files;
            for( var i = 0; i < uploadedFiles.length; i++ ){
                this.files.push( uploadedFiles[i] );
                this.max_size_file = this.max_size_file + uploadedFiles[i].size
            }
            if(this.max_size_file>10000000){
                this.files = []
                this.max_size_file = 0
                    // alert
                    this.$swal('Your file is larger than 10 MB. Sorry Choose Again !!!')
            }
            this.uploadPercentage = 0
        },
        RemoveRow: function(index){
            this.max_size_file = this.max_size_file - this.files[index].size
            this.files.splice(index,1)
        },
        //submit
        submitNews(){
                var jsonNews = JSON.stringify(this.newsE)
                var FD  = new FormData()
                    if(this.url != null || this.url!= ''){
                        FD.append('userfile',this.fileimage)
                    }
                    if(this.files.length!=0){
                        for( var i = 0; i < this.files.length; i++ ){
                            FD.append('userfileupload'+i, this.files[i]);
                        }
                    }
                    FD.append('news',jsonNews)            
                    FD.append('creator',JSON.stringify(this.$store.state.log_on))
                    this.$store.dispatch("Edit_News",FD)
                    setTimeout(()=>{
                        this.$router.push('/AdminN')
                    },2000)  
                this.$swal("Edit News Success .", "", "success")
        }
    },
    watch :{
        RemoveRow: function(){
            this.files=[]
            let uploadedFiles = this.$refs.files.files;
            for( var i = 0; i < uploadedFiles.length; i++ ){
                this.files.push( uploadedFiles[i] );
            }
            this.uploadPercentage = 0
        }
    },
    computed : {
        thisNews(){
            var newsAll = this.$store.getters.getNews
            var news 
            for(var i=0; i<newsAll.length; i++){
                if(newsAll[i].n_id == this.$route.params.NewsID){
                    news = newsAll[i]
                }
            }
            this.newsE = news 
            return news
        },
        thisFiles(){
            var filesAll = this.$store.getters.getFiles
            var files_news = []
            for(var i=0; i<filesAll.length; i++){
                if(filesAll[i].f_key == this.thisNews.n_file_key){
                    files_news.push(filesAll[i])
                }
            }
            if(files_news.length != 0){
                return files_news
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
        }
    }
}
</script>
