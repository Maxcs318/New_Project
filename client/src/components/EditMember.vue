<template>

    <div class="row">
        <div class="col-lg-12">
            <!-- {{$route.params.member}} // ค่าที่ส่งมา (array) -->
        </div>
        <div class="col-lg-12 mt-3"> <h3 style="text-align:center"> Hello Update </h3> <br> </div>
        <div class="col-lg-4">
        <!--  -->
        </div>
        <div class="col-lg-4">
            <form @submit.prevent="onSubmit">
            <b>Firstname</b>
            <input v-model="member.m_firstname" type="text" class="form-control col-lg-12" required>
            <b>Lastname</b>
            <input v-model="member.m_lastname" type="text" class="form-control col-lg-12" required>
            <b>E-mail</b>
            <input v-model="member.m_email" type="text" class="form-control col-lg-12" required>
            <b>Phone</b>
            <input v-model="member.m_phone" type="text" class="form-control col-lg-12" required>
            <!-- status  -->
            <input v-model="member.m_status" type="hidden" >
            <b>Username</b>
            <input v-model="member.m_username" type="text" class="form-control col-lg-12" required>
            <b>password</b>
            <input v-model="member.m_password" type="text" class="form-control col-lg-12" required>
            <br>
            <button type="submit" class="form-control col-lg-12 btn-primary" >Save</button>
            </form>

        </div>
        <div class="col-lg-4">
        <!--  -->
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
          member: {
              m_firstname :'',
              m_lastname :'',
              m_email :'',
              m_phone :'',
              m_status :'user',
              m_username :'',
              m_password :''

          }  
        }
    },
    methods : {
        onSubmit(){
            this.$store.dispatch("updateMember",this.member)
            .then(() => {
                this.$router.push("/")
            })
        }
    },
    created(){
        this.member = {
            ...this.$route.params.member
        }
    }
}
</script>
