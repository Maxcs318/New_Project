<template>
    <div class="container ">
        <div class="row">
            <div class="col-lg-10 col-xs-12"></div>
            <div class="col-lg-2 col-xs-12"> 
                <button type="button" class="form-control btn-success" @click="page_cart"> Cart </button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <center><h5>My Order</h5></center>
                <br>
                <table style="width:100%; text-align: center;">
                    <tr>
                        <th> No </th>
                        <th> Code Order </th>
                        <th> Total Price </th>
                        <th> Status Order </th>
                        <th> Create Date </th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr v-for="(order,index) in Order " :key="index">
                        <td>{{index+1}}</td>
                        <td>{{order.o_code_order}}</td>
                        <td>{{order.o_total_price}}</td>
                        <td>{{order.o_status_id}}</td>
                        <td>{{order.o_create_date}}</td>
                        <td> 
                            <button type="button" class="form-control btn-primary" @click="Pay_This(order.o_id)"> Pay </button> 
                        </td>
                        <td> 
                            <button type="button" class="form-control btn-danger" @click="Delete_Order(order.o_id)"> Delete </button> 
                        </td>        
                    </tr>
                </table>
                
                <br><br>
                
                
                
            </div>            
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        page_cart(){
            this.$router.push('my_cart')
        },
        Pay_This(order_id){
            console.log('pay',order_id)
            swal({title: "Pay Success.",icon: "success",});
        },
        Delete_Order(order_id){
            console.log('delete',order_id)
            swal({title: "Delete Success.",icon: "success",});
        }
    },
    computed:{
        Order(){
            return this.$store.getters.getMy_Order
        }
    },
    created(){
      this.$store.dispatch("initDataOrders")    
      this.$store.dispatch("initDataOrder_Items")    
      this.$store.dispatch("initDataOrder_Status")    
    }
}
</script>

