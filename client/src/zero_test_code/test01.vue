<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-xs-12" >
                <div v-for="t in Test">
                    ID : {{t.o_id}} 
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    computed:{
        Test(){   
            return this.$store.getters.getOrder_For_Admin
        }
    },
    created(){
        this.$store.dispatch("initDataMoney_Transfer")
    }
}
</script>
