<template>
    <div class="container mt-3">
        <h4>List Room</h4>
        <div class="row">
            <div class="col-lg-4 col-xs-12" v-for="(list,index) in ListRoom" :key="index">
                <div @click="seethisRoom(list.vr_id)">
                <!-- {{list.vr_id}} <br> -->
                Room Name: <b>{{list.vr_title}}</b> <br>
                Description: {{list.vr_description.slice(0,10)}} ... <br>
                Create Date: {{list.vr_create_date}} <br>
                Update Date: {{list.vr_update_date}} <br>
                <!-- {{list.vr_owner}} <br> -->
                </div>
                <br>
                <div class="row" v-if="the_user.m_status == 'admin'">
                    <div class="col-lg-6 col-lg-xs-12">
                        <button class="form-control btn-success" @click="editRoom(list.vr_id)"> Edit </button> <br>
                    </div>
                    <div class="col-lg-6 col-lg-xs-12">
                        <button class="form-control btn-danger"> Delete </button> <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        seethisRoom(thisroom){
            this.$router.push({name:'listvideos',params:{RoomID:thisroom}});
        },
        editRoom(thisroom){
            this.$router.push({name:'editvideoroom',params:{RoomID:thisroom}});

        }
    },
    computed:{
        ListRoom(){
            return this.$store.getters.getVideo_Room
        },
        the_user(){
            return this.$store.getters.getThe_User
        }
    },
    created(){
        this.$store.dispatch("initDataVideo_Room")
    }
}
</script>

