<template>
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <center><h5>My Cart</h5></center>
                <div v-for=" (MC,index) in this_cart" :key="index">
                    {{MC}}
                </div>

                
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-lg-3 col-xs-3">
                <button type="button" class="form-control btn-danger" @click="remove_all">Remove Cart</button>
                <br>
            </div>
            <div class="col-lg-3 col-xs-3">
                <!-- <button type="button" class="form-control btn-primary" @click="add_product">ADD</button> -->
                <br>
            </div>
        </div>
            State <br>
            {{MyCart}}

    </div>
</template>
<script>
export default {
    data(){
        return{
            this_cart:''        
        }
    },
    methods:{
        add_product(){
            // localStorage.setItem('Cart',0)
            // this.this_cart = this.this_cart+1
        },
        remove_all(){
            this.this_cart = null
            this.$store.dispatch("Remove_Cart")
        }
    },
    watch:{
        this_cart(){
            // localStorage.setItem("Cart", JSON.stringify(this.this_cart));
            // localStorage.setItem("Cart", null);
        }
    },
    computed:{
        MyCart(){
            var cart = this.$store.getters.getCart
            this.this_cart = cart

            return cart
        },
    },
}
</script>
