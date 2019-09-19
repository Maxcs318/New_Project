<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-xs-12"></div>
            <div class="col-lg-2 col-xs-12"> 
                <button type="button" class="form-control btn-primary" @click="page_order"> Order </button> <br>
            </div>
            <div class="col-lg-2 col-xs-12"> 
                <button type="button" class="form-control btn-success" @click="page_cart"> Cart </button> <br>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h5><center>Order History</center></h5>

            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        page_order(){
            this.$router.push('my_order')
        },
        page_cart(){
            this.$router.push('my_cart')
        }
    }
}
</script>
