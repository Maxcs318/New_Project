<template>
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <center><h5>My Cart</h5></center>
                
                <table style="width:100% ">
                    <tr style="width:100% ">
                        <th>ID Product</th>
                        <th>Name Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Price Total</th>
                        <th></th>
                    </tr>
                    <tr style="width:100% " v-for=" (MC,index) in this_cart" :key="index">
                        <td> {{MC.p_id}} </td>
                        <td> {{MC.p_name}} </td>
                        <td> {{MC.p_price}} </td>
                        <td> {{MC.quantity}} </td>
                        <td> {{MC.price_total}} </td> 
                        <td> <button class="btn btn-danger" type="button" @click="remove_all(MC.p_id)">Remove </button> </td>                       
                    </tr>
                </table>

            </div>
        </div>
        <div class="row mt-5">
            <div class="col-lg-3 col-xs-3">
                <button type="button" class="form-control btn-danger" @click="clear_cart">Clear Cart</button>
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
            this.$store.dispatch("Add_Cart_ProductAdd",productAdd)
            // localStorage.setItem('Cart',0)
            // this.this_cart = this.this_cart+1
        },
        remove(){

        },
        remove_all(ProductID){
            console.log(ProductID)
        },
        clear_cart(){
            this.this_cart = null
            this.$store.dispatch("Remove_Cart")
        }
    },
    watch:{
        this_cart(){
            // localStorage.setItem("Cart", JSON.stringify(this.this_cart));
        }
    },
    computed:{
        MyCart(){
            var cart = this.$store.getters.getCart
            var now_cart = []
            var product_all = this.$store.getters.getProduct_Set_Category
            var user = this.$store.getters.getThe_User
            
            for(var i=0; i<cart.length; i++){
                for(var j=0; j<product_all.length; j++){
                    if(cart[i].p_id == product_all[j].p_id){
                        if(user.m_status == 'admin'){
                            product_all[j].p_price = product_all[j].p_price2
                        }
                        now_cart.push({
                            p_id : product_all[j].p_id,
                            p_name : product_all[j].p_name,
                            quantity : cart[i].quantity,
                            p_price : product_all[j].p_price,
                            price_total : product_all[j].p_price*cart[i].quantity
                        })
                    }
                }
            }
            

            this.this_cart = now_cart
            return cart
        },
    },
}
</script>
