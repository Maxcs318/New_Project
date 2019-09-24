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
                <center><h5>My Order History</h5></center>
                <br>
                <table style="width:100%; text-align: center;">
                    <tr>
                        <th> No </th>
                        <th> Code Order </th>
                        <th> Total Price </th>
                        <th> Status Order </th>
                        <th> Create Date </th>
                    </tr>
                    <tr v-for="(order,index) in Order " :key="index">
                        <td>{{index+1}}</td>
                        <td @click="seethisOrder(order.o_code_order)">{{order.o_code_order}}</td>
                        <td>{{order.o_total_price}}</td>
                        <td>
                            <div v-for=" os in Order_Status " v-if="os.os_id == order.o_status_id">
                                {{os.os_title}}
                            </div>
                        </td>
                        <td>{{order.o_create_date}}</td>            
                    </tr>
                </table> <br><br>
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
        },
        seethisOrder(this_order){
            this.$router.push({name:'order',params:{CodeOrder:this_order}});
        },
    },
    computed:{
        Order(){
            return this.$store.getters.getMy_Order[1]
        },
        Order_Status(){
            return this.$store.getters.getOrder_Status          
        }
    },
    created(){
      this.$store.dispatch("initDataOrders")    
      this.$store.dispatch("initDataOrder_Items")    
      this.$store.dispatch("initDataOrder_Status")    
    }
}
</script>
