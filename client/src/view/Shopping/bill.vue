<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h5><center> Bill : {{this.$route.params.CodeOrder}} </center></h5>
                <!-- {{Order_Status}} -->
            </div>
        </div>
        <div class="row" id="print"
             v-if="Order!=0 && Shipping_Address && Moneytransfer && Payment" 
             style="background-color: white; color:black;">
            <div class="col-lg-12 col-xs-12">
                <br>
                <center><h3> Gama Thailand </h3></center>
                <center> Address Bla Bla Bla </center>
                <br>
                <center><h4> ใบเสร็จรับเงิน </h4></center>
                <div class="row">
                    <div class="col-lg-8"></div>
                    <div class="col-lg-4">
                        Order Code : {{this.$route.params.CodeOrder}}   <br>
                        วันที่จ่าย : {{Moneytransfer.mtf_date}}   <br>
                        ชำระผ่าน : {{Payment.pm_title}}  <br>
                        <div v-if=" Banking && Banking != 'No'"> Banking : {{Banking.b_name}} </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-xs-12" v-if="Shipping_Address">
                        ชื่อ : {{Shipping_Address.sa_first_name}} <br>
                        ที่อยู่ : {{Shipping_Address.sa_address}} <br>
                        รหัสไปรษณีย์ : {{Shipping_Address.sa_postcode}} <br>
                        บริษัท : {{Shipping_Address.sa_company}} <br>
                        เบอร์โทร : {{Shipping_Address.sa_phone}} <br>
                        E-mail : {{Shipping_Address.sa_email}} <br>
                    </div>
                </div>
                <br>                    
                <table class="table" style="width:100%; text-align: center;" v-if="Order">
                    <tr>
                        <th> # </th>
                        <th> รายการ </th>
                        <th> ราคา ( บาท ) </th>
                        <th> จำนวน </th>
                        <th> เป็นเงิน </th>
                    </tr>
                    <tr v-for="(order_item,index) in Order_Items" :key="index">
                        <td>{{index+1}}</td>
                        <td>{{order_item.oi_product_id}}</td>
                        <td>{{order_item.oi_product_price}}</td>
                        <td>{{order_item.oi_quantity}}</td>
                        <td>{{order_item.oi_total_price}}</td>
                    </tr>
                </table>
                <br>
                <center>
                รวมทั้งสิ้น  {{ Order.o_total_price }} บาท <br>
                </center>
                <br>
            </div>

        </div>
        <div class="row" v-else>
            <div class="col-lg-12 col-xs-12">
                <br>
                <h5><center> Order Error. Order May Not Have .  </center></h5>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-9"></div>
            <div class="col-lg-3" v-if="Order && Order.o_status_id >= 3">
                <br>
                <button class="form-control btn-primary" @click="show_bill"> Print Bill </button> 
                <br>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrl(pic) {
            return this.path_files+'Slip/'+pic
        },
        show_bill(){
            let pdfName = 'test_PDF'; 
            var doc = new jsPDF();
            doc.fromHTML(document.getElementById('print'), 15, 15, {
                'width': 170
            });
            doc.save(pdfName + '.pdf');
        },
        
    },
    computed:{
        path_files(){
            return this.$store.getters.getPath_Files
        },
        Order(){
            var od = this.$store.getters.getOrder 
            var x
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
            var product_all = this.$store.getters.getProduct
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
            var OD = this.Order
            var sa_this_order
            for(var i=0; i<my_sa.length; i++){
                if(my_sa[i].sa_id == OD.o_shipping_address_id){
                    sa_this_order = my_sa[i]
                }
            }
            return sa_this_order
        },
        Moneytransfer(){
            var money = this.$store.getters.getMoney_Transfer
            var this_money
                for(var i=0;i<money.length;i++){
                    if(money[i].mtf_id == this.Order.o_money_transfer_id){
                        this_money = money[i]
                    }
                }
            return this_money
        },
        Payment(){
            var pm = this.$store.getters.getPayments
            var mtf = this.Moneytransfer
            var this_pm
                for(var j=0;j<pm.length;j++){
                    if(mtf.mtf_payments_id == pm[j].pm_id){
                        this_pm = pm[j]
                    }
                }
            return this_pm
        },
        Banking(){
            var bk = this.$store.getters.getBanking
            var mtf = this.Moneytransfer
            var this_bk
            if(mtf.mtf_banking_id >0){
                for(var j=0;j<bk.length;j++){
                    if(mtf.mtf_banking_id == bk[j].b_id){
                        this_bk = bk[j]
                    }
                }
            }else{
                this_bk = 'No'
            }
            return this_bk
        }
    },
    created(){
        this.$store.dispatch("initDataShipping_Address")
        this.$store.dispatch("initDataPayment")
        this.$store.dispatch("initDataBanking")
        this.$store.dispatch("initDataMoney_Transfer")
    }
    
}
</script>
