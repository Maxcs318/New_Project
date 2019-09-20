<template>
    <div class="container ">
        <!-- // -->
        <div v-if="address_show == 'OFF'">
        <div class="row">
            <div class="col-lg-10 col-xs-12"></div>
            <div class="col-lg-2 col-xs-12"> 
                <button type="button" class="form-control btn-success" @click="page_order"> Order </button> <br>
            </div>
        </div>
        <div class="row" v-if="thisMyCart.length==0">
            <h5 style="width:100%; text-align: center;"> Your Cart is Empty</h5> <br><br><br><br>
        </div>
        <div class="row" v-if="MyCart.length>0 && Compute_Total && thisMyCart.length!=0">
            <div class="col-lg-12 col-xs-12">
                <center><h5>My Cart</h5></center>
                <br>
                <table style="width:100%; text-align: center;">
                    <tr style="width:100% ">
                        <th>No</th>
                        <th>Name Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Price Total</th>
                        <th></th>
                    </tr>
                    <tr style="width:100% " v-for=" (MC,index) in thisMyCart" :key="index">
                        <td> {{index+1}} </td>
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
                <p style="text-align: center;" class=" "> Total Price {{total_Price}}  ฿</p> <br><br>
            </div>
            <div class="col-lg-3 col-xs-3">
                <button type="button" class="form-control btn-danger" @click="clear_cart">Clear Cart</button>
                <br>
            </div>
            <div class="col-lg-6 col-xs-6"></div>
            <div class="col-lg-3 col-xs-3">
                <button type="button" class="form-control btn-primary" @click="check_out">Check Out</button>
                <br>
            </div>
        </div>
        </div>
        <!-- // -->
        <div v-else>
        <div class="row">
            <div class="col-lg-4 col-xs-12"></div>
            <div class="col-lg-4 col-xs-12">
                <form @submit.prevent="submitCart_To_Order">    
                    <h5><center>Shipping Address</center></h5>
                    <div v-if="My_Shipping_Address!=''">
                        Select Old Shipping Address
                        <select class="form-control" v-model="select_sa">
                            <option value=""> - - No Select - - </option>
                            <option v-for="(shipping ,index) in My_Shipping_Address" :key="index" :value="shipping.sa_id" >
                                {{ shipping.sa_title }}
                            </option>
                        </select>
                    </div>
                    Title
                    <input type="text" v-model="shipping_address.sa_title" class="form-control" :disabled="click_select_sa()" required>
                    Address
                    <textarea class="form-control" rows="5" v-model="shipping_address.sa_address" :disabled="click_select_sa()" required></textarea>
                    Postcode
                    <input type="text" v-model="shipping_address.sa_postcode" class="form-control" :disabled="click_select_sa()" required>
                    Phone
                    <input type="text" v-model="shipping_address.sa_phone" class="form-control" :disabled="click_select_sa()" required>
                    E-mail
                    <input type="text" v-model="shipping_address.sa_email" class="form-control" :disabled="click_select_sa()" required>
                    Company
                    <input type="text" v-model="shipping_address.sa_company" class="form-control" :disabled="click_select_sa()" required>
                    <br>
                    <div class="row">
                        <div class="col-lg-6 col-xs-6">
                            <button type="button" class="form-control btn-danger" @click="check_out"> Back. </button> <br>
                        </div>
                        <div class="col-lg-6 col-xs-6">
                            <button type="submit" class="form-control btn-primary"> Save. </button> <br>
                        </div>
                    </div>                
                    <br>
                </form>
            </div>
            <div class="col-lg-4 col-xs-12"></div>
        </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            select_sa:'',
            address_show:'OFF',
            shipping_address:{
                sa_title:'',
                sa_address:'',
                sa_postcode:'',
                sa_phone:'',
                sa_email:'',
                sa_company:''
            },
            thisMyCart:'',
            total_Price:0
        }   
    },
    methods:{
        check_out(){
            if(this.address_show=='OFF'){
                this.address_show = 'ON'
            }else{
                this.address_show='OFF'
            }
        },
        click_select_sa(){
            if(this.select_sa == ''){
                return false
            }else{
                return true
            }
        },
        page_order(){
            this.$router.push('my_order')
        },
        seethisPageProduct(thisproduct){
            this.$router.push({name:'product',params:{ProductID:thisproduct}});
        },
        submitCart_To_Order(){
            var my_order =[]
            for(var f=0; f<this.thisMyCart.length; f++){
                if( this.thisMyCart[f].quantity > 0 ){
                    my_order.push(this.thisMyCart[f])
                }
            }
            var FD  = new FormData()
            FD.append('order',JSON.stringify(my_order))
            if(this.select_sa == ''){
                FD.append('shipping_address',JSON.stringify(this.shipping_address))
            }else{
                FD.append('shipping_address_id',JSON.stringify(this.select_sa))
            }
            FD.append('own_id',JSON.stringify(this.$store.state.log_on))
            this.$store.dispatch("Create_Order",FD)
            swal({title: "Create Order Success.",icon: "success",})
            
            setTimeout(()=>{
                this.$router.push('/my_order')
            },2000)
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
            this.$swal({
                title: "Are you sure?",
                text: "You want Remove This Product",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    this.thisMyCart.splice(index,1)
                    this.$store.dispatch("Remove_Product_In_Cart",productID)
                    swal({title: "Remove Product Success.",icon: "success",});
                }
            })
        },
        clear_cart(){
            this.$swal({
                title: "Are you sure?",
                text: "You want Remove all Product in Cart ",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    this.thisMyCart = []
                    this.$store.dispatch("Remove_Cart")
                    swal({title: "Clear Cart Success.",icon: "success",});
                }
            })
            
        }
    },
    watch:{
        select_sa: function () {
            if(this.select_sa == ''){
                this.shipping_address = {
                    sa_title:'',
                    sa_address:'',
                    sa_postcode:'',
                    sa_phone:'',
                    sa_email:'',
                    sa_company:''
                }
            }else{
                for(var i=0; i<this.My_Shipping_Address.length; i++){
                    if(this.select_sa == this.My_Shipping_Address[i].sa_id){
                        this.shipping_address = this.My_Shipping_Address[i]
                    }
                }
            }
        },
    },
    computed:{
        Compute_Total(){
            this.total_Price = 0
                for(var i=0; i<this.thisMyCart.length; i++){
                    if(this.thisMyCart[i].quantity > 0){
                        this.total_Price = this.total_Price + this.thisMyCart[i].price_total
                    }
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
                        if(user.m_type == '2' || user.m_type == '3'){
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
        My_Shipping_Address(){
            return this.$store.getters.getMy_Shipping_Address
        }
    },
    created(){
        this.$store.dispatch("initDataShipping_Address")
    }
}
</script>
