<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h5><center> Code Order : {{this.$route.params.CodeOrder}} </center></h5>
            </div>
        </div>
        <div class="row" v-if="Order!=0">
            {{ Order }}<br>
            Status : {{ Order.o_status_id }}<br>
            Order Create Date : {{ Order.o_create_date }}<br>
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
        }
    },
    
}
</script>
