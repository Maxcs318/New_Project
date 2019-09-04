<template>
    <div class="container mt-3">
        <h4>List Room</h4>
        <div class="row">
            <div class="col-lg-4 col-xs-12" v-for="(list,index) in ListRoom.slice().reverse()" :key="index">
                <div @click="seethisRoom(list.vr_id)">
                <!-- {{list.vr_id}} <br> -->
                Room Name: <b>{{list.vr_title}}</b> <br>
                Description: {{list.vr_description.slice(0,10)}} ... <br>
                Create Date: {{list.vr_create_date}} <br>
                Update Date: {{list.vr_update_date}} <br>
                <!-- {{list.vr_owner}} <br> -->
                </div>
                <br>
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
    },
    computed:{
        ListRoom(){
            return this.$store.getters.getVideo_Room
        },
    },
    created(){
        this.$store.dispatch("initDataVideo_Room")
    }
}
</script>

