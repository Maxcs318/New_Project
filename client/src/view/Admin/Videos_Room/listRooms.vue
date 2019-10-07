<template>
    <div class="container" v-if="the_user">
        <h4 class=" ">List Video Room</h4> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="addroom">Add Room</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:25%">Room Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(list,index) in ListRoom" :key="index" >
                        <td>{{list.vr_id}}</td>
                        <td>{{list.vr_title.slice(0,25)}}</td>
                        <td>{{list.vr_create_date}}</td>
                        <td>{{list.vr_update_date}}</td>
                        <td> <button class="form-control btn-success" @click="seethisRoom(list.vr_id)"> In Room </button> </td>
                        <td> <button class="form-control btn-warning" @click="editRoom(list.vr_id)">Edit</button> </td>
                        <td> <button class="form-control btn-danger" @click="deleteRoom(list.vr_id)">Delete</button> </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    methods:{
        addroom(){
            this.$router.push('/addroom')
        },
        seethisRoom(thisroom){
            this.$router.push({name:'AdminLV',params:{RoomID:thisroom}});
        },
        editRoom(thisroom){
            this.$router.push({name:'editvideoroom',params:{RoomID:thisroom}});
        },
        deleteRoom(thisroom){
            var FD  = new FormData()
            FD.append('video_roomID',JSON.stringify(thisroom))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$swal({
                title: "Are you sure?",
                text: "You want delete this Video Room ID "+thisroom,
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    // console.log(thisroom)
                    this.$store.dispatch("Delete_Video_Room",FD)
                    swal({title: "Delete Success.",icon: "success",});
                } else {
                    // swal("Your imaginary file is safe!");
                }
            })
        }
    },
    computed:{
        ListRoom(){
            return this.$store.getters.getVideo_Room
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
        this.$store.dispatch("initDataVideo_Room")
    }
}
</script>

