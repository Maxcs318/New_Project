<template>
<div class="container">
    <div class="row mt-5">
        <div class="col-lg-4 col-xs-12"></div>
        <div class="col-lg-4 col-xs-12">
            <!-- /// -->
            <form @submit.prevent="onSubmitLogin">
                <center><h3> Login </h3></center>
                <br>
                <h5>Username</h5>
                <input type="text" v-model="username" class="form-control" required>
                <br>
                <h5>Password</h5>
                <input type="password" v-model="password_normal" class="form-control" required>
                <br>
                <center v-if="UserLogin!=''">{{UserLogin}}</center>
                <br v-else>
                <br>
                <div class="row">
                    <div class="col-lg-6">
                        <button type="button" class="form-control col-12 btn-success" @click="back_register"> Register </button>
                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="col-lg-6">
                        <button type="submit" class="form-control col-12 btn-primary"> Login </button>
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
            username:'',
            UserLogin:''
        }
    },
    methods:{
        onSubmitLogin(){
            this.user.m_password = md5(this.password_normal)
            this.user.m_username = this.username
            this.$store.dispatch("Logining_in",this.user)
            .then( response => {
                // 
                setTimeout(() => {
                    if(this.$store.state.log_on != null){
                        this.$store.commit('LoadingPage','none')
                        setTimeout(() => {
                            this.$router.push("/")
                            this.$store.commit('LoadingPage','show')
                        }, 3000)
                    }else{
                        this.UserLogin = 'User or Password incorrect'
                        // this.$router.push("/login")
                    }
                }, 400)
                this.$store.dispatch("initApp")
            })
        },        
        back_register(){
            this.$router.push("/register")
        }
    },
    watch:{
        password_normal:function(){
            if(this.password_normal==''){
                this.UserLogin = ''
            }
        },
        username:function(){
            if(this.username==''){
                this.UserLogin = ''
            }
        }
    }
}
</script>
