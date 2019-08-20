<template>
    <div> 
        <b-navbar toggleable="lg" type="light" variant="light">
            <router-link to="/">
                <b-navbar-brand> <h2>GAMA Thailand</h2> </b-navbar-brand>
            </router-link>

            <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

            <b-collapse id="nav-collapse" is-nav>
                <b-navbar-nav>
                    <h5>
                    <b-nav-item-dropdown text="เกี่ยวกับสมาชิก" left>
                        <b-dropdown-item @click="aboutmember">เกี่ยวกับสมาชิก</b-dropdown-item>
                        <b-dropdown-item >...</b-dropdown-item>
                    </b-nav-item-dropdown>
                    </h5>
                </b-navbar-nav>
                <b-navbar-nav>
                    <h5>
                    <b-nav-item-dropdown text="ข่าวสารกิจกรรม" left>
                        <b-dropdown-item @click="newsandactivities">ข่าสารกิจกรรม ทั้งหมด</b-dropdown-item>
                        <b-dropdown-item >ภาพกิจกรรม ต่างๆ</b-dropdown-item>
                    </b-nav-item-dropdown>
                    </h5>
                </b-navbar-nav>
                <b-navbar-nav>
                    <b-navbar-brand>
                        <h5>
                        <b-nav-item-dropdown text="บทความ" left>
                            <b-dropdown-item @click="articles">บทความ ทั้งหมด</b-dropdown-item>
                            <b-dropdown-item >บทความเทคนิคดีๆ</b-dropdown-item>
                            <b-dropdown-item >Inside GAMA International</b-dropdown-item>
                        </b-nav-item-dropdown>
                        </h5>
                    </b-navbar-brand>
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
                    <h5>
                    <b-nav-item-dropdown text="ติดต่อเรา" left>
                        <b-dropdown-item @click="contact">ติดต่อเรา</b-dropdown-item>
                        <b-dropdown-item >คณะกรรมการ GAMA Thailand</b-dropdown-item>
                    </b-nav-item-dropdown>
                    </h5>
                </b-navbar-nav>
            
            <b-navbar-nav class="ml-auto">
                <button class="form-control btn-light" v-if="this.$store.state.the_user == '' " @click="register"> Register </button>
                <button v-if="this.$store.state.the_user == '' " class="form-control btn-light" @click="Log_in"> Log in </button>

                <b-nav-item-dropdown right v-if="this.$store.state.the_user.m_status == 'admin' ">
                    <template slot="button-content"> Admin </template>
                        <b-dropdown-item @click="addnews">Add News</b-dropdown-item>
                        <b-dropdown-item @click="addarticle">Add Article</b-dropdown-item>
                        <b-dropdown-item @click="addproduct">Add Product</b-dropdown-item>
                        <b-dropdown-item @click="addvideosandroom">Add Videos&Room</b-dropdown-item>
                </b-nav-item-dropdown>
                <b-nav-item-dropdown right v-if="this.$store.state.the_user != '' ">
                    <template slot="button-content"> {{this.$store.state.the_user.m_username}} </template>
                        <b-dropdown-item @click="profile">Profile</b-dropdown-item>
                        <b-dropdown-item @click="videosroom">Video Room</b-dropdown-item>
                        <b-dropdown-item @click="productall">Product All</b-dropdown-item>
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
            this.$router.push('/profile')
        },
        videosroom(){
            this.$router.push('/listroom')
        },
        productall(){
            this.$router.push('/productall')
        },
        addnews(){
            this.$router.push('/addnews')
        },
        addarticle(){
            this.$router.push('/addarticle')
        },
        addproduct(){
            this.$router.push('/addproduct')
        },
        addvideosandroom(){
            this.$router.push('/addvideosandroom')
        },
        newsandactivities(){
            this.$router.push('/newsandactivities')
        },
        aboutmember(){
            this.$router.push('/aboutmember')
        },
        articles(){
            this.$router.push('/articles')
        },
        contact(){
            this.$router.push('/contact')
        }

    }
}
</script>
<style>
   .navbar-dark .navbar-nav .nav-link {
      color:black!important
    }
 </style>
