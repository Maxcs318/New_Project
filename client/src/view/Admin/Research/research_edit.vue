<template>
    <div class="container" v-if="the_user && thisResearch">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h4><center>Research Edit</center></h4>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-xs-12"></div>
            <div class="col-lg-6 col-xs-12">
                <form @submit.prevent="submitResearch">
                    Title
                    <input type="text" v-model="researchE.r_title" class="form-control" required>
                    <br>
                    Title Alternative
                    <input type="text" v-model="researchE.r_titlealternative" class="form-control" required>
                    <br>
                    <!-- Creator
                    <input type="text" v-model="research.r_creator" class="form-control" required>
                    <br> -->
                    subject
                    <input type="text" v-model="researchE.r_subject" class="form-control" required>
                    <br>
                    Description
                    <textarea v-model="researchE.r_description" class="form-control" rows="6" ></textarea>
                    <br>
                    Publisher
                    <textarea v-model="researchE.r_publisher" class="form-control" rows="3" ></textarea>
                    <br>
                    Created Date
                    <input type="text" v-model="researchE.r_createddate" class="form-control" required>
                    <br>
                    Modified Date
                    <input type="text" v-model="researchE.r_modifieddate" class="form-control" required>
                    <br>
                    Issued Date
                    <input type="text" v-model="researchE.r_issueddate" class="form-control" required>
                    <br>
                    Type
                    <input type="text" v-model="researchE.r_type" class="form-control" required>
                    <br>
                    Format
                    <input type="text" v-model="researchE.r_format" class="form-control" required>
                    <br>
                    Source
                    <input type="text" v-model="researchE.r_source" class="form-control" required>
                    <br>
                    Language
                    <input type="text" v-model="researchE.r_language" class="form-control" required>
                    <br>
                    Rights
                    <textarea v-model="researchE.r_rights" class="form-control" rows="2" ></textarea>
                    <br>
                    Permission ( ** ระดับที่เลือกและระดับที่สูงกว่าจะสามารถเข้าดูได้ )
                    <select v-model="researchE.r_permission" class="form-control" required>
                        <option selected disabled value=''>Select Permission</option>
                        <option v-for="(mt,index) in Member_Type" :key="index" :value="mt.mt_id" >
                            {{ mt.mt_name }}
                        </option>
                    </select>
                    <br>
                    <div v-if="thisFiles != null" v-for="(file,run) in thisFiles"  >
                        <button type="button" class="btn btn-danger" @click="RemoveFile(file.f_id)">delete</button>
                        <a :href="loadFile(file.f_name)" download> Dowload File </a> {{file.f_title}}<br>
                        <br>
                    </div>
                    <br>
                    <br>
                    <h5>New Files [ {{files.length}} ] Size Files All [ {{max_size_file}} byte ]</h5>
                        <input type="file" ref="files" style="display: none;" id="FileUpload1" @change="handleFileUpload" multiple>
                    <br>
                    <div class="row" v-for="(f,index) in files" :key="index">
                        <div class="col-lg-10">
                            <input type="text" class="form-control" v-model="file_title[index]" placeholder="File Title" required>
                            <b> {{index+1}}. File  </b> {{files[index].name }}
                            <b> Size </b>{{files[index].size}} byte
                            <br><br>
                        </div>
                        <div class="col-lg-2">
                            <button type="button" class="form-control btn-danger" 
                            @click="RemoveRow(index)">X</button> <br>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-lg-6">
                            <button type="button" class="form-control btn-primary col-lg-12" @click="ChooseFiles"> Choose Files </button>
                            <br>
                        </div>
                        <div class="col-lg-6">
                            <button type="submit" class="form-control btn-primary col-12"> Save </button>
                            <br>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-xs-12"></div>
        </div>
<!-- //  -->
<!-- //  -->
    </div>
</template>
<script>
export default {
    data(){
        return{
            researchE:'',
            file_title:[],
            files : [],
            max_size_file : 0,
        }
    },
    methods:{
        loadFile(fi){
            return this.path_files+'Research_Files_Upload/'+fi
        },
        // files
        ChooseFiles(){
            document.getElementById('FileUpload1').click()
        },
        handleFileUpload(event){
            this.files = []
            this.file_title = []
             
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
        },
        RemoveRow: function(index){
            this.max_size_file = this.max_size_file - this.files[index].size
            this.files.splice(index,1)
            this.file_title.splice(index,1)
        },
        // delete file
        RemoveFile: function(fileID){
            var FD_delete  = new FormData()
                FD_delete.append('fileID',fileID)
                FD_delete.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$store.dispatch("Delete_File",FD_delete)    
        },
        // submit
        submitResearch(){
                var jsonResearch = JSON.stringify(this.researchE)
                var jsonFiles_Title = JSON.stringify(this.file_title)
                var FD  = new FormData()
                    if(this.files.length!=0){
                        for( var i = 0; i < this.files.length; i++ ){
                            FD.append('userfileupload'+i, this.files[i]);
                        }
                        FD.append('file_title',jsonFiles_Title)   
                    }
                    FD.append('research',jsonResearch)            
                    FD.append('creator',JSON.stringify(this.$store.state.log_on))
                    this.$store.dispatch("Edit_Research",FD)
                    setTimeout(()=>{
                        this.$router.go(-1)
                    },2000)  
                this.$swal("Edit Research Success .", "", "success")
        }
    },
    computed:{
        path_files(){
            return this.$store.getters.getPath_Files
        },
        thisResearch(){
            var researchAll = this.$store.getters.getResearch
            var research 
            for(var i=0; i<researchAll.length; i++){
                if(researchAll[i].r_id == this.$route.params.ResearchID){
                    research = researchAll[i]
                }
            }
            this.researchE = research 
            return research
        },
        thisFiles(){
            var filesAll = this.$store.getters.getFiles
            var files_research = []
            for(var i=0; i<filesAll.length; i++){
                if(filesAll[i].f_key == this.thisResearch.r_file_key){
                    files_research.push(filesAll[i])
                }
            }
            if(files_research.length != 0){
                return files_research
            }else{
                return false
            }
        },
        the_user(){
            var user = this.$store.getters.getThe_User
            if( user.m_status != 'admin' ){
                // this.$router.go(-1)
            }
            return user
        },
        Member_Type(){
            return this.$store.getters.getMember_Type
        },
    }
}
</script>
