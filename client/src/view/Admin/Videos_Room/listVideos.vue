<template>
        <div class="container">
        <h4 class="mt-3" v-if="thisRoom">List Videos in -> {{thisRoom.vr_title}}</h4> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="addvideos">Add Videos</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:35%">Video Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(list,index) in ListVideos" :key="index" >
                        <td>{{list.v_id}}</td>
                        <td>{{list.v_title.slice(0,25)}}</td>
                        <td>{{list.v_create_date}}</td>
                        <td>{{list.v_update_date}}</td>
                        <td> <button class="form-control btn-warning" @click="editVideo(list.v_id)">Edit</button> </td>
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
        addvideos(){
            this.$router.push('/addvideos')
        },
        editVideo(thisvideo){
            this.$router.push({name:'editvideo',params:{VideoID:thisvideo}})
        },
        seethisVideo(thisvideo){
            this.$router.push({name:'roomvideo',params:{VideoID:thisvideo}})
        }
    },
    computed:{
        ListVideos(){
            var listvideosAll = this.$store.getters.getVideos
            var listvideos = []
            for(var i=0; i<listvideosAll.length; i++ ){
                if( listvideosAll[i].v_room == this.$route.params.RoomID ){
                    listvideos.push(listvideosAll[i])
                }
            }
            return listvideos
        },
        thisRoom(){
            var roomall = this.$store.getters.getVideo_Room 
            var room_now    
            for(var i=0;i<roomall.length;i++){
                if(roomall[i].vr_id == this.$route.params.RoomID){
                    room_now = roomall[i]
                }
            }
            return room_now
        },
    }
}
</script>
