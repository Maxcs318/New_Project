<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h5><center> Code Order : {{this.$route.params.CodeOrder}} </center></h5>
            </div>
        </div>
        <div class="row" v-if="Order!=0">
            <div class="col-lg-12 col-xs-12">
                <table style="width:100%; text-align: center;">
                    <tr>
                        <th> Product ID </th>
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
                Total Price : {{ Order.o_total_price }}<br>
                Status : {{ Order.o_status_id }}<br>
                Order Create Date : {{ Order.o_create_date }}<br>
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
    methods:{

    },
    computed:{
        Order(){
            var od = this.$store.getters.getMy_Order 
            for(var i=0; i<od.length; i++){
                if(od[i].o_code_order == this.$route.params.CodeOrder){
                    return od[i]
                }
            }
            return 0 
        },
        Order_Items(){
            var odi = this.$store.getters.getOrder_Item
            var order_i=[]
                for(var i=0;i<odi.length; i++){
                    if(odi[i].oi_order_id == this.Order.o_id){
                        order_i.push(odi[i])
                    }
                }
            var product_all = this.$store.getters.getProduct_Set_Category
            return order_i
        }
    },
    
}
</script>
