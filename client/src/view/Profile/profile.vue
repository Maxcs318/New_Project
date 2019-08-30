<template>
    <div class="container mt-5">
        <center><h5> My Profile </h5></center>
        <div class="row" v-if="the_user">
            <div class="col-lg-3 col-xs-12" ></div>      
            <div class="col-lg-6 col-xs-12">
                <img v-if="the_user.m_imageprofile!=''" :src="getImgUrl(the_user.m_imageprofile)" width="100%">
                <img v-if="the_user.m_imageprofile==''" src="../../assets/Profile_Image/default_profile.jpg" width="100%">
                <br><br>
                Firstname TH : {{the_user.m_firstname}}<br>
                Firstname Eng : {{the_user.m_firstname_eng}}<br>
                Lastname TH : {{the_user.m_lastname}}<br>
                Lastname Eng : {{the_user.m_lastname_eng}}<br>
                Username  : {{the_user.m_username}}<br>
                Image Profile  : {{the_user.m_imageprofile}}<br>
                Company : {{the_user.m_company}}<br>
                Phone : {{the_user.m_phone}}<br>
                E-mail : {{the_user.m_email}}<br>
                Institute : {{the_user.m_institute}}<br>
                Address : {{the_user.m_address}}<br><br>
                <div class="row">
                    <div class="col-lg-8 col-xs-12"></div>
                    <div class="col-lg-4 col-xs-12">
                        <button class="form-control btn-primary" @click="profile_edit">Edit Profile</button>
                    </div>
                </div>
                <!-- <hr> -->
                <!-- ID : {{the_user.m_id}}<br>
                ID number : {{the_user.m_id_number}}<br>
                Status : {{the_user.m_status}}<br>
                Member Type : {{the_user.m_type}}<br>
                Upgrade Date ID : {{the_user.m_upgrade_date_id}}<br>
                Join in : {{the_user.m_create_date}}<br>
                Last Edit : {{the_user.m_update_date}}<br>
                Password : {{the_user.m_password}} -->

            </div>
            <div class="col-lg-3 col-xs-12"></div>

        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrl(pic) {
            return require('../../assets/Profile_Image/'+pic)
        },
        getImgUrlDefault(){
            return require('../../assets/Profile_Image/default_profile.jpg')
        },
        profile_edit(){
            this.$router.push('/editprofile')
        }
    },
    computed:{
        the_user(){
            var user = this.$store.getters.getThe_User
            return user
        }
    },
    created(){
        this.$store.dispatch("initApp")
    }
}
</script>
