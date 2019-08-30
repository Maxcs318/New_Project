<template>
    <div class="container mt-5">
        <center><h4> Edit Profile </h4></center><br>
        <div class="row" v-if="the_user">
            <div class="col-lg-3 col-xs-12"></div>      
            <div class="col-lg-6 col-xs-12">
                <img v-if="the_user.m_imageprofile != ''" :src="getImgUrl(the_user.m_imageprofile)" width="100%">
                <img v-if="the_user.m_imageprofile == ''" src="../../assets/Profile_Image/default_profile.jpg" width="100%"><br><br>
                <button class="btn btn-success" type="button">
                    Change Image Profile
                </button>
                <br><br>
            <form @submit.prevent="submitEditProfile">                        

                Firstname TH 
                <input type="text" v-model="E_member.m_firstname" class="form-control " ><br>

                Firstname Eng 
                <input type="text" v-model="E_member.m_firstname_eng" class="form-control " ><br>

                Lastname TH 
                <input type="text" v-model="E_member.m_lastname" class="form-control " ><br>

                Lastname Eng 
                <input type="text" v-model="E_member.m_lastname_eng" class="form-control " ><br>

                Username  
                <input type="text" v-model="E_member.m_username" class="form-control " ><br>

                Image Profile 
                <input type="text" v-model="E_member.m_imageprofile" class="form-control " ><br>

                Company 
                <input type="text" v-model="E_member.m_company" class="form-control " ><br>

                Phone 
                <input type="text" v-model="E_member.m_phone" class="form-control " ><br>

                E-mail 
                <input type="text" v-model="E_member.m_email" class="form-control " ><br>

                Institute 
                <input type="text" v-model="E_member.m_institute" class="form-control " ><br>

                Address 
                <input type="text" v-model="E_member.m_address" class="form-control " ><br>

                Confirm Password For Change Profile
                <input type="password" v-model="passwordCheck" class="form-control " required><br>

                <!-- <hr> -->
                <!-- ID : {{the_user.m_id}}<br>
                ID number : {{the_user.m_id_number}}<br>
                Status : {{the_user.m_status}}<br>
                Member Type : {{the_user.m_type}}<br>
                Upgrade Date ID : {{the_user.m_upgrade_date_id}}<br>
                Join in : {{the_user.m_create_date}}<br>
                Last Edit : {{the_user.m_update_date}}<br>
                Password : {{the_user.m_password}} -->
                <div class="row">
                    <div class="col-lg-9 col-xs-12"></div>
                    <div class="col-lg-3 col-xs-12">
                        <button class="form-control btn-primary">Save</button>
                    </div>
                </div>
            </form>
            </div>
            <div class="col-lg-3 col-xs-12"></div>
        </div>
    </div>
</template>
<script>
import md5 from 'js-md5'
export default {
    data(){
        return{
            E_member:'',
            passwordOld:'',
            passwordCheck:''
        }
    },
    methods:{
        getImgUrl(pic) {
            return require('../../assets/Profile_Image/'+pic)
        },
        submitEditProfile(){
            var chk = md5(this.passwordCheck)
            if(chk != this.passwordOld){
                this.$swal(" Confirm Password Incorrect .", "", "error")
                this.passwordCheck = ''
            }else{

            console.log(this.E_member)
                // var jsonArticle = JSON.stringify(this.articleE)
                // var FD  = new FormData()
                //     if(this.url != null || this.url!= ''){
                //         FD.append('userfile',this.fileimage)
                //     }
                //     FD.append('article',jsonArticle)            
                //     FD.append('creator',JSON.stringify(this.$store.state.log_on))
                //     this.$store.dispatch("Edit_Article",FD)
                    setTimeout(()=>{
                        this.$router.push('/myProfile')
                    },2000)  
                this.$swal("Edit Article Success .", "", "success")
            }
        }
    },
    computed:{
        the_user(){
            var user = this.$store.getters.getThe_User
            this.E_member = user
            // this.E_member.m_password = ''
            this.passwordOld = user.m_password
            return user
        }
    },
    created(){
        this.$store.dispatch("initApp")
    }
}
</script>
