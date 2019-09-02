<template>
<div class="container">
    <div class="row mt-5" v-if="log_on">
        <div class="col-lg-4 col-xs-12"></div>
        <div class="col-lg-4 col-xs-12" >
            <!-- /// -->
            <form @submit.prevent="onSubmitRegister">
                <center><h3> Register </h3></center>
                <br>
                <h5>Firstname</h5>
                <input type="text" v-model="newuser.m_firstname" class="form-control" required>
                <br>
                <h5>Lastname</h5>
                <input type="text" v-model="newuser.m_lastname" class="form-control" required>
                <br>
                <h5>Username</h5>
                <input type="text" v-model="newuser.m_username" class="form-control" required>
                <br>
                <h5>Password</h5>
                <input type="password" v-model="newuser.m_password" class="form-control" required>
                <br>
                <br>
                <div class="row">
                    <div class="col-lg-6">
                        <button type="button" class="form-control col-12 btn-danger" @click="back_login"> Back to Login </button>
                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="col-lg-6">
                        <button type="submit" class="form-control col-12 btn-primary"> Save </button>
                    </div>
                </div>
            </form>
            <!-- /// -->
        </div>

        <div class="col-lg-4 col-xs-12"></div>
    </div>
</div>
</template>

<script>
import md5 from 'js-md5'

export default {
    data(){
        return{
            user:{
                m_username:'',
                m_password:''
            },
            password_normal:'',
            newuser:{
                m_firstname:'',
                m_lastname:'',
                m_username:'',
                m_status:'user',
                m_phone:'',
                m_email:'',
                m_password:''
            },
            register_user:''
        }
    },
    methods:{
        onSubmitLogin(){
            // console.log(this.user)
            this.user.m_password = md5(this.password_normal);
            this.$store.dispatch("Logining_in",this.user)
            .then( response => {
                //
            })
        },
        onSubmitRegister(){
            this.newuser.m_password = md5(this.newuser.m_password);
            this.register_user = this.newuser
            // console.log(this.newuser)
            this.$store.dispatch("Register",this.register_user)
            .then( response => { 
                console.log(response)
            })

            this.$router.push('/login')
                setTimeout(() => {
                    this.newuser.m_firstname =''
                    this.newuser.m_lastname =''
                    this.newuser.m_username =''
                    this.newuser.m_phone =''
                    this.newuser.m_email =''
                    this.newuser.m_password =''
                }, 500)
                
            this.$swal("Register Success .", "", "success")                
        },
        //
        back_login(){
            this.$router.push('/login')
        }
    },
    computed:{
        log_on(){
            var user = this.$store.getters.getThe_User
            if(user != '' || user != null){
                this.$router.push("/")
            }else{
                return 'register'
            }
        }
    }
}
</script>
