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
                    <input id="chooseImage" ref="files" style="display: none;" type="file" @change="handleFiles">

                    หัวเรื่อง
                    <input type="text" v-model="articleE.a_title" class="form-control" required>
                    <br>
                    รายระเอียด
                    <textarea v-model="articleE.a_detail" class="form-control" rows="6" ></textarea>
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
            articleE:'',
            url: null,
            fileimage:''
        }
    },
    methods:{
        getImgUrl(pic) {
            return require('../../assets/Article/'+pic)
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
        submitArticle(){
                var jsonArticle = JSON.stringify(this.articleE)
                var FD  = new FormData()
                    if(this.url != null || this.url!= ''){
                        FD.append('userfile',this.fileimage)
                    }
                    FD.append('article',jsonArticle)            
                    FD.append('creator',JSON.stringify(this.$store.state.log_on))
                    this.$store.dispatch("Edit_Article",FD)
                    setTimeout(()=>{
                        this.$router.push('/')
                    },2000)  
                this.$swal("Edit Article Success .", "", "success")
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
