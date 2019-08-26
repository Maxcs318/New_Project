<template>
    <div class="container mt-3">
        <center><h4>Add Video</h4></center>
        <div class="row">
            <div class="col-lg-3 col-xs-12"></div>
            <div class="col-lg-6 col-xs-12">
                <form @submit.prevent="submitAddvideos">
                    <h5>Select Room</h5>
                    <!-- {{ListRoom}} -->
                    <select class="form-control" v-model="selectRoom" required>
                        <option disabled selected value=""> Select Room </option>
                        <option v-for="(room,index) in ListRoom" :key="index" :value="room.vr_id">
                            {{room.vr_title}}
                        </option>
                    </select>
                    <hr>
                    <div v-for="(addV,index) in addVideos" :key="index">
                        <h5>Video Name</h5>
                        <input v-model="addVideos[index].v_title" type="text" class="form-control" required>
                        <br>
                        <h5>Video Link ( Embed )</h5>
                        <input v-model="addVideos[index].v_link" type="text" class="form-control" required>
                        <br>
                        <h5>Description</h5>
                        <textarea v-model="addVideos[index].v_description" class="form-control" rows="4" required></textarea>
                        <br>
                        <div class="row">
                            <div class="col-lg-6 col-xs-6">
                                <button v-if="addVideos.length > 1" class="form-control btn-danger" type="button" @click="btn_remove(index)"> Remove </button>
                            </div>
                            <div class="col-lg-6 col-xs-6"></div>
                        </div>
                    <hr>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-xs-6">
                            <button class="form-control btn-success" type="button" @click="btn_addmore"> Add More </button>
                        </div>
                        <div class="col-lg-6 col-xs-6">
                            <button class="form-control btn-primary" type="submit"> Save. </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-xs-12"></div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return{
            selectRoom:'',
            addVideos:[{
                v_title:'',
                v_description:'',
                v_link:'',
                v_room:''
            }]
        }
    },
    methods:{
        btn_addmore(){
                this.addVideos.push({v_title:'',v_description:'',v_link:'',v_room:''})
        },
        btn_remove(index){
            if(this.addVideos.length >1){
                this.addVideos.splice(index, 1)
            }
        },
        submitAddvideos(){
            for(var i=0; i<this.addVideos.length; i++){
                this.addVideos[i].v_room = this.selectRoom
            }
            // console.log(this.addVideos)
            var FD  = new FormData()
            FD.append('videos',JSON.stringify(this.addVideos))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$store.dispatch("AddVideos",FD)
            this.$swal("Add Videos Success .", "", "success")
        }
    },
    computed:{
        ListRoom(){
            return this.$store.getters.getVideo_Room
        }
    }
}
</script>
