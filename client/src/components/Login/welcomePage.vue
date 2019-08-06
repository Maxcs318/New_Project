<template>
    <div class="container">
        <div class="row mt-5">
            <div class="col-lg-12 col-xs-12">
                The User in Store : {{this.$store.state.the_user}}
                <br>
                <br>
                The User ID : {{this.$store.state.the_user.m_id}}
                <br>
                The User Username : {{this.$store.state.the_user.m_username}}
                <br>
                The User Password : {{this.$store.state.the_user.m_password}}
                <br><br>
                Log On : {{this.$store.state.log_on}}
            </div>
        </div>
    </div>
</template>
