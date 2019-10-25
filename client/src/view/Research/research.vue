<template>
    <div class="container" v-if="thisResearch">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h4><center>Research {{researchE.r_title}}</center></h4>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2 col-xs-12"></div>
            <div class="col-lg-8 col-xs-12">
                    Title : {{researchE.r_title}}
                    <br>
                    Title Alternative : {{researchE.r_titlealternative}}
                    <br>
                    subject : {{researchE.r_subject}}
                    <br>
                    Description : {{researchE.r_description}}
                    <br>
                    Publisher : {{researchE.r_publisher}}
                    <br>
                    Created Date : {{researchE.r_createddate}}
                    <br>
                    Modified Date : {{researchE.r_modifieddate}}
                    <br>
                    Type : {{researchE.r_type}}
                    <br>
                    Format : {{researchE.r_format}}
                    <br>
                    Source : {{researchE.r_source}}
                    <br>
                    Language : {{researchE.r_language}}
                    <br>
                    Rights : {{researchE.r_rights}}
                    <br>
                    <center><h4> Files </h4></center>
                    <div v-if="thisFiles != null" v-for="(file,run) in thisFiles"  >
                        <a :href="loadFile(file.f_name)" download> Dowload File </a> {{file.f_title}}<br>
                        <br>
                    </div>
                    <br>                    
            </div>
            <div class="col-lg-2 col-xs-12"></div>
        </div>
<!-- //  -->
<!-- //  -->
    </div>
</template>
<script>
export default {
    data(){
        return{
            researchE:[]
        }
    },
    methods:{
        loadFile(fi){
            return this.path_files+'Research_Files_Upload/'+fi
        },
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
        Member_Type(){
            return this.$store.getters.getMember_Type
        },
    }
}
</script>
