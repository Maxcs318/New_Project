<template>
    <div> 
        <b-navbar toggleable="lg" type="light" variant="light">
            <router-link to="/">
                <b-navbar-brand> <h2>GAMA Thailand</h2> </b-navbar-brand>
            </router-link>

            <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

            <b-collapse id="nav-collapse" is-nav>
                <b-navbar-nav>
                    <router-link to="/">
                        <b-navbar-brand> <b-nav-text><h5> หน้าหลัก </h5></b-nav-text> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/aboutmember">
                        <b-navbar-brand> <b-nav-text><h5> เกี่ยวกับสมาชิก </h5></b-nav-text> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/newsandactivities">
                        <b-navbar-brand> <b-nav-text><h5> ข่าวสาร & กิจกรรม </h5></b-nav-text> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/articles">
                        <b-navbar-brand> <b-nav-text><h5> บทความ </h5></b-nav-text> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/training_courses">
                        <b-navbar-brand> <b-nav-text><h5> หลักสูตร & อบรม </h5></b-nav-text> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/books">
                        <b-navbar-brand> <b-nav-text><h5> หนังสือ </h5></b-nav-text> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/contact">
                        <b-navbar-brand> <b-nav-text><h5> ติดต่อเรา </h5></b-nav-text> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                
            
            <b-navbar-nav class="ml-auto">
                <button class="form-control btn-light" v-if="this.$store.state.the_user == '' " @click="register"> Register </button>
                <button v-if="this.$store.state.the_user == '' " class="form-control btn-light" @click="Log_in"> Log in </button>
                <b-nav-item-dropdown right v-if="this.$store.state.the_user != '' ">
                    <template slot="button-content"> {{this.$store.state.the_user.m_username}} </template>
                        <b-dropdown-item @click="admin" v-if="this.$store.state.the_user.m_status == 'admin' ">Admin</b-dropdown-item>
                        <b-dropdown-item @click="profile">Profile</b-dropdown-item>
                        <b-dropdown-item @click="videosroom">Video Room</b-dropdown-item>
                        <b-dropdown-item @click="productall">Product All</b-dropdown-item>
                        <b-dropdown-item @click="my_cart">My Cart</b-dropdown-item>
                        <b-dropdown-divider></b-dropdown-divider>
                        <b-dropdown-item @click="Log_Out">
                            Log Out
                        </b-dropdown-item>
                </b-nav-item-dropdown>
            </b-navbar-nav>
            </b-collapse>
        </b-navbar>
    </div>
</template>
<script>

export default {
    data(){
        return {
            active : false
        }  
    },
    methods:{
        
        Log_Out(){
            this.$store.dispatch("Log_Out")
            .then(() => {
                // this.$router.go()
            })
        },
        Log_in(){
            this.$router.push('/login')
        },
        register(){
            this.$router.push('/register')
        },
        profile(){
            this.$router.push('/myProfile')
        },
        videosroom(){
            this.$router.push('/listroom')
        },
        productall(){
            this.$router.push('/productall')
        },
        admin(){
            this.$router.push('/Admin')
        },
        my_cart(){
            this.$router.push('/my_cart')
        },
        
        

    }
}
</script>
<style>
   .navbar-dark .navbar-nav .nav-link {
      color:black!important
    }
 </style>
