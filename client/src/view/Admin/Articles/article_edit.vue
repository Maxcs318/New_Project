<template>
    <div class="container mt-3">
        <center><h4>Edit Article</h4></center>
        <div class="row mt-5" v-if="thisArticle && the_user">
            <div class="col-lg-5 col-xs-12">
                <img v-if="url"  :src="url" width="100%"/>
                <img v-else :src="getImgUrl(thisArticle.a_image)" width="100%">
                <br><br>
            </div>
            <div class="col-lg-7 col-xs-12">
                <form @submit.prevent="submitArticle">                        
                    <input id="chooseImage" ref="filesimage" style="display: none;" type="file" @change="handleFilesImage">

                    หัวเรื่อง
                    <input type="text" v-model="articleE.a_title" class="form-control" required>
                    <br>
                    ประเภทของบทความ
                    <select v-model="articleE.a_category" class="form-control" required>
                        <option v-for="(ac,index) in article_category" :key="index" :value="ac.ac_id" >
                            {{ ac.ac_title }}
                        </option>
                    </select>
                    <br>
                    รายระเอียด
                    <textarea v-model="articleE.a_detail" class="form-control" rows="6" ></textarea>
                    <br>
                    <div v-if="thisFiles != null" v-for="(file,index) in thisFiles" >
                        <a :href="loadFile(file.f_title)" download> Dowload File {{index+1}}</a> {{file.f_title}}<br>
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
            articleE:'',
            url: null,
            fileimage:'',
            files : [],
            max_size_file : 0,
        }
    },
    methods:{
        getImgUrl(pic) {
            return require('../../../assets/Article/'+pic)
        },
        loadFile(fi){
            return require('../../../assets/Files_Upload/'+fi)
        },
        // image
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
        // files
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
        // submit
        submitArticle(){
                var jsonArticle = JSON.stringify(this.articleE)
                var FD  = new FormData()
                    if(this.url != null || this.url!= ''){
                        FD.append('userfile',this.fileimage)
                    }
                    if(this.files.length!=0){
                        for( var i = 0; i < this.files.length; i++ ){
                            FD.append('userfileupload'+i, this.files[i]);
                        }
                    }
                    FD.append('article',jsonArticle)            
                    FD.append('creator',JSON.stringify(this.$store.state.log_on))
                    this.$store.dispatch("Edit_Article",FD)
                    setTimeout(()=>{
                        this.$router.push('/AdminA')
                    },2000)  
                this.$swal("Edit Article Success .", "", "success")
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
        thisArticle(){
            var articleAll = this.$store.getters.getArticle
            var article 
            for(var i=0; i<articleAll.length; i++){
                if(articleAll[i].a_id == this.$route.params.ArticleID){
                    article = articleAll[i]
                }
            }
            this.articleE = article 
            return article
        },
        thisFiles(){
            var filesAll = this.$store.getters.getFiles
            var files_article = []
            for(var i=0; i<filesAll.length; i++){
                if(filesAll[i].f_key == this.thisArticle.a_file_key){
                    files_article.push(filesAll[i])
                }
            }
            if(files_article.length != 0){
                return files_article
            }else{
                return false
            }
        },
        article_category(){
            return this.$store.getters.getArticle_Category
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
