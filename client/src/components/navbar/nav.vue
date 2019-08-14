<template>
    <div> 
        <b-navbar toggleable="lg" type="dark" variant="primary">
            <router-link to="/">
                <b-navbar-brand> <h2>GAMA Thailand</h2> </b-navbar-brand>
            </router-link>

            <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

            <b-collapse id="nav-collapse" is-nav>
                <b-navbar-nav>
                    <router-link to="/aboutmember">
                        <b-navbar-brand> <h5>เกี่ยวกับสมาชิก</h5> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/newsandactivities">
                        <b-navbar-brand> <h5>ข่าสารกิจกรรม</h5> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/articles">
                        <b-navbar-brand> <h5>บทความ</h5> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/training_courses">
                        <b-navbar-brand> <h5>หลักสูตร & อบรม</h5> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/books">
                        <b-navbar-brand> <h5>หนังสือ</h5> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
                <b-navbar-nav>
                    <router-link to="/contact">
                        <b-navbar-brand> <h5>ติดต่อเรา</h5> </b-navbar-brand>
                    </router-link>
                </b-navbar-nav>
            
            <b-navbar-nav class="ml-auto">
                <button class="form-control btn-primary" v-if="this.$store.state.the_user == '' " @click="register"> Register </button>
                <button v-if="this.$store.state.the_user == '' " class="form-control btn-primary" @click="Log_in"> Log in </button>

                <b-nav-item-dropdown right v-if="this.$store.state.the_user.m_status == 'admin' ">
                    <template slot="button-content"> Admin </template>
                        <b-dropdown-item @click="addnews">Add News</b-dropdown-item>
                        <b-dropdown-item @click="addarticle">Add Article</b-dropdown-item>
                        <b-dropdown-item @click="addproduct">Add Product</b-dropdown-item>
                </b-nav-item-dropdown>
                <b-nav-item-dropdown right v-if="this.$store.state.the_user != '' ">
                    <template slot="button-content"> {{this.$store.state.the_user.m_username}} </template>
                        <b-dropdown-item @click="profile">Profile</b-dropdown-item>
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
        mouseOver: function(){
            this.active = !this.active;   
        }
        ,
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
        addnews(){
            this.$router.push('/addnews')
        },
        addarticle(){
            this.$router.push('/addarticle')
        },
        addproduct(){
            this.$router.push('/addproduct')
        }

    }
}
</script>
