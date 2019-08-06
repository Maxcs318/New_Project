<template>
    <div>
        <b-navbar toggleable="lg" type="dark" variant="dark">
            <router-link to="/">
                <b-navbar-brand> Home </b-navbar-brand>
            </router-link>

            <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

            <b-collapse id="nav-collapse" is-nav>
            <b-navbar-nav>
                <router-link to="/member">
                <b-navbar-brand> Member </b-navbar-brand>
                </router-link>
                <router-link to="/">
                <b-navbar-brand> ... </b-navbar-brand>
                </router-link>
            </b-navbar-nav>
            <!-- Right aligned nav items -->
            <b-navbar-nav class="ml-auto">

                <button class="form-control btn-dark" @click="Log_Out"> Logout </button>
                <!-- <b-nav-item-dropdown right>
                <template slot="button-content"><em>User</em></template>
                <b-dropdown-item href="#">Profile</b-dropdown-item>
                <b-dropdown-item href="#">Sign Out</b-dropdown-item>
                </b-nav-item-dropdown> -->
            </b-navbar-nav>
            </b-collapse>
        </b-navbar>
    </div>
    
    
    
    
    <!-- // Navbar -->
    <!-- <nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <ul class="nav">
                <li>
                    <router-link to="/"><h4>Home</h4></router-link>
                </li>
                <li>
                    <button class="form-control btn-dark" @click="Log_Out">
                        Exit
                    </button>
                </li>
            </ul>
        </div>
    </nav>
 -->

</template>
<script>
export default {
    methods:{
        Log_Out(){
            this.$store.dispatch("Log_Out")
            .then(() => {
                // this.$router.go()
            })
        }
    }
}
</script>

