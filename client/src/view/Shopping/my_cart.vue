<template>
    <div class="container mt-5">
        <div class="row" v-if="MyCart.length<1">
            <h5 style="width:100%; text-align: center;"> Your Cart is Empty</h5>
        </div>
        <div class="row" v-if="MyCart.length>0 && Compute_Total">
            <div class="col-lg-12 col-xs-12">
                <center><h5>My Cart</h5></center>
                <br>
                <table style="width:100%; text-align: center;" v-if="MyCart">
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
                        <td @click="seethisPageProduct(MC.p_id)"> {{MC.p_name}} </td>
                        <td> {{MC.p_price}} </td>
                        <td>
                            <button class="btn" @click="remove_product(index,MC.p_id)">-</button>
                             {{MC.quantity}} 
                            <button class="btn" @click="add_product(index,MC.p_id)">+</button>     
                        </td>
                        <td> {{computePrice( index,MC.p_price,MC.quantity )}} </td> 
                        <td> <button class="btn btn-danger" type="button" @click="remove_all(index,MC.p_id)">Remove </button> </td>                       
                    </tr>
                </table>
                <p style="text-align: center;" class="mt-3"> Total Price {{total_Price}}  ฿</p>

            </div>
        </div>
        <div class="row mt-5" v-if="MyCart.length>0">
            <div class="col-lg-3 col-xs-3">
                <button type="button" class="form-control btn-danger" @click="clear_cart">Clear Cart</button>
                <br>
            </div>
            <div class="col-lg-3 col-xs-3">
                <button type="button" class="form-control btn-primary" @click="create_order">Create Order</button>
                <br>
            </div>
        </div>
            <!-- LocalStorage <br> -->
            <!-- <div v-for=" x in MyCart" >
                {{x}}
            </div> -->

    </div>
</template>
<script>
export default {
    data(){
        return{
            thisMyCart:'',
            total_Price:0
        }   
    },
    methods:{
        seethisPageProduct(thisproduct){
            this.$router.push({name:'product',params:{ProductID:thisproduct}});
        },
        computePrice(index,price,quantity){
            var ptt = price*quantity
            this.thisMyCart[index].price_total = ptt
            return this.thisMyCart[index].price_total
        },
        add_product(index,productID){
            this.thisMyCart[index].quantity  = this.thisMyCart[index].quantity + 1
            this.$store.dispatch("Add_Cart_ProductAdd",productID)
        },
        remove_product(index,productID){
            if(this.thisMyCart[index].quantity>1){
                this.thisMyCart[index].quantity  = this.thisMyCart[index].quantity - 1
                this.$store.dispatch("Remove_Cart_ProductRemove",productID)
            }
        },
        remove_all(index,productID){
            this.thisMyCart.splice(index,1)
            this.$store.dispatch("Remove_Product_In_Cart",productID)
        },
        clear_cart(){
            this.thisMyCart = []
            this.$store.dispatch("Remove_Cart")
        }
    },
    computed:{
        Compute_Total(){
            this.total_Price = 0
                for(var i=0; i<this.thisMyCart.length; i++){
                    this.total_Price = this.total_Price + this.thisMyCart[i].price_total
                }
            return true
        },
        MyCart(){
            var cart = JSON.parse(localStorage.getItem('Cart'))
            if(cart == null){
                cart=[]
            }
            var now_cart = []
            var product_all = this.$store.getters.getProduct_Set_Category
            var user = this.$store.getters.getThe_User
            var the_price = null // set price for user
            for(var i=0; i<cart.length; i++){
                for(var j=0; j<product_all.length; j++){
                    
                    if(cart[i].p_id == product_all[j].p_id){
                        if(user.m_status == 'admin'){
                            the_price = product_all[j].p_price2
                        }else{
                            the_price = product_all[j].p_price
                        }
                        now_cart.push({
                            p_id : product_all[j].p_id,
                            p_name : product_all[j].p_name,
                            quantity : cart[i].quantity,
                            p_price : the_price,
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
