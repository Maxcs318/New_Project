<template>
    <div class="container">
        <h4 class="mt-3">สินค้า ทั้งหมด</h4> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="addproduct">Add Product</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:35%">Product Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(product,index) in ProductAll.slice().reverse()" :key="index" >
                        <td>{{product.p_id}}</td>
                        <td>{{product.p_name.slice(0,35)}}</td>
                        <td>{{product.p_create_date}}</td>
                        <td>{{product.p_update_date}}</td>
                        <td> <button class="form-control btn-warning" @click="editProduct(product.p_id)">Edit</button> </td>
                        <td> <button class="form-control btn-danger">Delete</button> </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    methods:{
        
        addproduct(thisproduct){
            this.$router.push('/addproduct');
        },
        editProduct(thisproduct){
            this.$router.push({name:'editproduct',params:{ProductID:thisproduct}});
        }
    },
    computed:{
        ProductAll(){
            return this.$store.getters.getProduct
        },
        the_user(){
            return this.$store.getters.getThe_User
        }
    },
    created(){
        this.$store.dispatch("initDataProduct")
        this.$store.dispatch("initDataProduct_Category")
        this.$store.dispatch("initDataProduct_Image")
    }
}
</script>

