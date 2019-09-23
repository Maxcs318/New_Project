<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12" v-for="t in Test">
               ID : {{t.mtf_id}} Title : {{t.mtf_title}}
            </div>
        </div>
    </div>
</template>
<script>
export default {
    computed:{
        Test(){   
            return this.$store.getters.getMoney_Transfer
        }
    }
}
</script>
