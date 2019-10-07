<template>
    <div class="container" v-if="the_user">
        <h5>List Gallery</h5> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="addgallery">Add Gallery</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:35%">News Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(gallery,index) in Gallery" :key="index">
                        <td>{{gallery.g_id}}</td>
                        <td>{{gallery.g_name.slice(0,35)}}</td>
                        <td>{{gallery.g_create_date}}</td>
                        <td>{{gallery.g_update_date}}</td>
                        <td> <button class="form-control btn-warning" @click="editGallery(gallery.g_id)">Edit</button> </td>
                        <td> <button class="form-control btn-danger"  @click="deleteGallery(gallery.g_id)">Delete</button> </td>
                    </tr>
                </table>
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    methods:{
        addgallery(){
            this.$router.push('/addgallery')
        },
        editGallery(this_Gallery){
            this.$router.push({name:'editgallery',params:{GalleryID:this_Gallery}});
        },
        deleteGallery(this_Gallery){
            // console.log(thisproduct)
            var FD  = new FormData()
            FD.append('galleryID',JSON.stringify(this_Gallery))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$swal({
                title: "Are you sure?",
                text: "You want delete this Gallery ID "+this_Gallery,
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    this.$store.dispatch("Delete_Gallery",FD)
                    swal({title: "Delete Success.",icon: "success",});
                } else {
                    // swal("Your imaginary file is safe!");
                }
            })
        }
    },
    computed:{
        Gallery(){
            return this.$store.getters.getGallery
        },
        the_user(){
            var user = this.$store.getters.getThe_User
            if( user.m_status != 'admin' ){
                this.$router.go(-1)
            }
            return user
        }
    },
    created(){
        this.$store.dispatch("initDataGallery")
    }
}
</script>

