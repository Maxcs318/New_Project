<template>
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <center><h5>My Cart</h5></center>
                <br>
                <table style="width:100% " v-if="MyCart">
                    <tr style="width:100% ">
                        <th>ID Product</th>
                        <th>Name Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Price Total</th>
                        <th></th>
                    </tr>
                    <tr style="width:100% " v-for=" (MC,index) in thisMyCart" :key="index">
                        <td> {{MC.p_id}} </td>
                        <td> {{MC.p_name}} </td>
                        <td> {{MC.p_price}} </td>
                        <td> {{MC.quantity}} </td>
                        <td> {{computePrice( index,MC.p_price,MC.quantity )}} </td> 
                        <td> <button class="btn btn-danger" type="button" @click="remove_all(MC.p_id)">Remove </button> </td>                       
                    </tr>
                </table>
                <p style="text-align: right;"> x</p>

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
            LocalStorage <br>
            <!-- <div v-for=" x in MyCart" >
                {{x}}
            </div> -->

    </div>
</template>
<script>
export default {
    data(){
        return{
            thisMyCart:''
        }
    },
    methods:{
        computePrice(index,price,quantity){
            var ptt = price*quantity
            this.thisMyCart[index].price_total = ptt
            return this.thisMyCart[index].price_total
        },
        add_product(productID){
            // this.$store.dispatch("Add_Cart_ProductAdd",productID)
            // localStorage.setItem('Cart',0)
            // this.MyCart = this.MyCart+1
        },
        remove(){

        },
        remove_all(productID){
            console.log(productID)
            for(var i=0; i<this.thisMyCart.length; i++){
                if(this.thisMyCart[i].p_id == productID){
                    this.thisMyCart.splice(i,1)
                }
            }

            this.$store.dispatch("Remove_Product_In_Cart",productID)
        },
        clear_cart(){
            this.thisMyCart = []
            this.$store.dispatch("Remove_Cart")
        }
    },
    watch:{
        //
    },
    computed:{
        MyCart(){
            var cart = JSON.parse(localStorage.getItem('Cart'))
            if(cart == null){
                cart=[]
            }
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
                            price_total : null
                        })
                    }
                }
            }
            this.thisMyCart = now_cart
            return cart
        },
    },
}
</script>
