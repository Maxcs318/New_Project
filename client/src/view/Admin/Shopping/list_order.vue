<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12" >
                <h5><center> Admin Check </center></h5><br>
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
                            <!-- <button type="button" class="form-control btn-danger" @click="Delete_Order(order.o_id,order.o_code_order)"> Delete </button>  -->
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
        check_this_order(this_order){
            this.$router.push({name:'check_order',params:{CodeOrder:this_order}})
        },
        Confirm_Order(this_order){
            this.$swal({
                title: "Are you sure?",
                text: "This Order "+this_order+" Pay ? ",
                icon: "warning",
                buttons: true,
                primaryMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    console.log(this_order)                    
                    swal({title: "Confirm Success.",icon: "success",});
                }
            })
        }
    },
    computed:{
        Order(){   
            return this.$store.getters.getOrder_For_Admin
        },
        Order_Status(){
            return this.$store.getters.getOrder_Status          
        }
    },
    created(){
        this.$store.dispatch("initDataOrders")    
        this.$store.dispatch("initDataOrder_Items")    
        this.$store.dispatch("initDataOrder_Status")    }
}
</script>
