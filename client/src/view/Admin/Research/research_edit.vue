<template>
    <div class="container" v-if="the_user">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h4><center>Research Edit</center></h4> 
                    
            </div>
        </div>
    </div>
</template>
<script>
export default {
    computed:{
        the_user(){
            var user = this.$store.getters.getThe_User
            if( user.m_status != 'admin' ){
                this.$router.go(-1)
            }
            return user
        }
    }
}
</script>
