<template>
    <div class="container mt-3">
        <h4>List Room</h4>
        <div class="row">
            <div class="col-lg-12 col-xs-12" v-for="(list,index) in ListRoom" :key="index">
                <div @click="seethisRoom(list.vr_id)">
                {{list.vr_id}} <br>
                {{list.vr_name}} <br>
                {{list.vr_description}} <br>
                {{list.vr_create_date}} <br>
                {{list.vr_owner}} <br>
                </div>
                <hr>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        seethisRoom(thisroom){
            this.$router.push({name:'listvideos',params:{RoomID:thisroom}});
        }
    },
    computed:{
        ListRoom(){
            return this.$store.getters.getVideo_Room
        }
    }
}
</script>

