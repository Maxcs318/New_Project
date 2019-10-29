<template>
    <div class="container" v-if="the_user">
        <h4 class=" ">ประเภท สินค้า</h4> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="add_product_category">Add Product Category</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:35%">Product Category Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(product,index) in product_category" :key="index" >
                        <td>{{product.pc_id}}</td>
                        <td>{{product.pc_title.slice(0,35)}}</td>
                        <td>{{product.pc_create_date}}</td>
                        <td>{{product.pc_update_date}}</td>
                        <td> <button class="form-control btn-warning" @click="editProduct_Category(product.pc_id)">Edit</button> </td>
                        <td> <button class="form-control btn-danger"  @click="deleteProduct_Category(product.pc_id)">Delete</button> </td>
                    </tr>
                </table>
                <br>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            
        };
    },
    methods:{
        add_product_category(){
            this.$router.push('/addproduct_category')
        },
        editProduct_Category(this_product_category){
            this.$router.push({name:'editproduct_category',params:{Product_CategoryID:this_product_category}});
        },
        deleteProduct_Category(this_product_category){
            // console.log(this_product_category)
            var FD  = new FormData()
            FD.append('product_categoryID',JSON.stringify(this_product_category))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$swal({
                title: "Are you sure?",
                text: "You want delete this Product Category ID "+this_product_category,
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    this.$store.dispatch("Delete_Product_Category",FD)
                    swal({title: "Delete Success.",icon: "success",});
                } else {
                    // swal("Your imaginary file is safe!");
                }
            })
        }
    },
    computed:{
        the_user(){
            var user = this.$store.getters.getThe_User
            if( user.m_status != 'admin' ){
                // this.$router.go(-1)
            }            
            return user
        },
        product_category(){
            return this.$store.getters.getProduct_Category
        }
    },
    created(){
        this.$store.dispatch("initDataProduct_Category");

    }
}
</script>