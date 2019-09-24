<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h5><center> Code Order : {{this.$route.params.CodeOrder}} </center></h5>
                <!-- {{Order_Status}} -->
            </div>
        </div>
        <div class="row" v-if="Order!=0 && Shipping_Address">
            <div class="col-lg-12 col-xs-12">
                <table style="width:100%; text-align: center;">
                    <tr>
                        <th> Product </th>
                        <th> Price </th>
                        <th> Quantity </th>
                        <th> Total Price </th>
                    </tr>
                    <tr v-for="order_item in Order_Items">
                        <td>{{order_item.oi_product_id}}</td>
                        <td>{{order_item.oi_product_price}}</td>
                        <td>{{order_item.oi_quantity}}</td>
                        <td>{{order_item.oi_total_price}}</td>
                    </tr>
                </table>
                <br>
                Total Price : {{ Order.o_total_price }} ฿<br>
                <div v-for="os in Order_Status" v-if="os.os_id == Order.o_status_id">Status : {{os.os_title}} </div>
                Order Create Date : {{ Order.o_create_date }}<br>
                <br>
                Shipping Address <br>
                Title : {{Shipping_Address.sa_title}} <br>
                Address : {{Shipping_Address.sa_address}} <br>
                Postcode : {{Shipping_Address.sa_postcode}} <br>
                Company : {{Shipping_Address.sa_company}} <br>
                E-mail : {{Shipping_Address.sa_email}} <br>
                Phone : {{Shipping_Address.sa_phone}} <br>
            </div>
        </div>
        <div class="row" v-else>
            <div class="col-lg-12 col-xs-12">
                <br>
                <h5><center> Order Error. Order May Not Have .  </center></h5>
            </div>
        </div>
        <div class="row">
            <br>
        </div>
    </div>
</template>
<script>
export default {
    computed:{
        Order(){
            var od = this.$store.getters.getOrder 
            var x = null
            for(var i=0; i<od.length; i++){
                if(od[i].o_code_order == this.$route.params.CodeOrder){
                    x = od[i]
                }
            }
            return x 
        },
        Order_Status(){
            return this.$store.getters.getOrder_Status 
        },
        Order_Items(){
            var odi = this.$store.getters.getOrder_Item
            var order_i=[]
            var product_all = this.$store.getters.getProduct_Set_Category

                for(var i=0;i<odi.length; i++){
                    if(odi[i].oi_order_id == this.Order.o_id){
                        // chang product id -> product name
                        for(var j=0; j<product_all.length; j++){
                            if(product_all[j].p_id == odi[i].oi_product_id){
                                odi[i].oi_product_id = product_all[j].p_name
                            }
                        }
                        order_i.push(odi[i])
                    }
                    
                }
            
            return order_i
        },
        Shipping_Address(){
            var my_sa = this.$store.getters.getShipping_Address
            var sa_this_order = null
            for(var i=0; i<my_sa.length; i++){
                if(my_sa[i].sa_id == this.Order.o_shipping_address_id){
                    sa_this_order = my_sa[i]
                }
            }
            return sa_this_order
        }
    },
    created(){
      this.$store.dispatch("initDataOrders")    
      this.$store.dispatch("initDataOrder_Items")    
      this.$store.dispatch("initDataOrder_Status")    
      this.$store.dispatch("initDataShipping_Address")
    }
    
}
</script>
