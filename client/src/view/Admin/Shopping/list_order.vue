<template>
    <div class="container">
        <h5><center> Admin Check Payments</center></h5><br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button type="button" class="form-control btn-primary" @click="check_delivery"> Check Delivery </button>
                <br>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12" >
                <table style="width:100%; text-align: center;">
                    <tr>
                        <th> No </th>
                        <th> Order ID </th>
                        <th> Code Order </th>
                        <th> Total Price </th>
                        <th> Status Order </th>
                        <th> Create Date </th>
                        <th></th>
                        <th></th>
                    </tr>
                    <tr v-for="(order,index) in Order " :key="index">
                        <td>{{index+1}}</td>
                        <td>{{order.o_id}}</td>
                        <td @click="check_this_order(order.o_code_order)">{{order.o_code_order}}</td>
                        <td>{{order.o_total_price}}</td>
                        <td>
                            <div v-for=" os in Order_Status " v-if="os.os_id == order.o_status_id">
                                {{os.os_title}}
                            </div>
                        </td>
                        <td>{{order.o_create_date}}</td>
                        <td> 
                            <button type="button" class="form-control btn-primary" @click="Confirm_Order(order.o_code_order)"> Confirm </button> 
                        </td>
                        <td> 
                            <button type="button" class="form-control btn-danger" @click="No_Confirm_Order(order.o_code_order)"> Discard </button> 
                        </td>        
                    </tr>
                </table> <br><br>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        check_delivery(){
            this.$router.push('AdminListOrder_check_delivery')
        },
        check_this_order(this_order){
            this.$router.push({name:'check_order',params:{CodeOrder:this_order}})
        },
        Confirm_Order(this_order){
            var FD  = new FormData()
            FD.append('order_code',JSON.stringify(this_order))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$swal({
                title: "Are you sure Confirm?",
                text: "This Order "+this_order+" Pay ? ",
                icon: "warning",
                buttons: true,
                primaryMode: true,
            })
            .then((Confirm_Success) => {
                if (Confirm_Success) {
                    // console.log('Confirm',this_order)    
                    this.$store.dispatch("Confirm_Order",FD)                
                    swal({title: "Confirm Success.",icon: "success",});
                }
            })
        },
        No_Confirm_Order(this_order){
            var FD  = new FormData()
            FD.append('order_code',JSON.stringify(this_order))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$swal({
                title: "Are you sure Discard?",
                text: "This Order "+this_order+" ? ",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((Discard_Success) => {
                if (Discard_Success) {
                    // console.log('Discard',this_order)  
                    this.$store.dispatch("Discard_Order",FD)                                  
                    swal({title: "Discard Success.",icon: "success",});
                }
            })
        }
    },
    computed:{
        Order(){   
            var order_for_admin = this.$store.getters.getOrder_For_Admin
            var order_s2 = []
                for(var i=0; i<order_for_admin.length; i++){
                    if(order_for_admin[i].o_status_id==2){
                        order_s2.push(order_for_admin[i])
                    }
                }
            return order_s2
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
