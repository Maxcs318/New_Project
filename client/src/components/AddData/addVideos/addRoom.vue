<template>
    <div class="container mt-3">
        <center><h4>Add Room</h4></center>
        <div class="row">
            <div class="col-lg-3 col-xs-12"></div>
            <div class="col-lg-6 col-xs-12">
                <form @submit.prevent="submitCreateRoom">
                    <h5>Room Name</h5>
                    <input v-model="createR.vr_name" type="text" class="form-control">
                    <br>
                    <h5>Description</h5>
                    <textarea v-model="createR.vr_description" class="form-control" rows="6" ></textarea>
                    <br>
                    <div class="row">
                        <div class="col-lg-6 col-xs-6"></div>
                        <div class="col-lg-6 col-xs-6">
                            <button class="form-control btn-primary" type="submit"> Create. </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-xs-12"></div>
            <!-- Name : {{createR.vr_name}} <br> Des  : {{createR.vr_description}} <br> -->
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            createR:{
                vr_name:'',
                vr_description:''
            }
        }
    },
    methods:{
        submitCreateRoom(){
            var FD  = new FormData()
            FD.append('room',JSON.stringify(this.createR))
            FD.append('creater',JSON.stringify(this.$store.state.log_on))
            this.$store.dispatch("CreateRoom",FD)
            // setTimeout(()=>{
                // this.$router.push('/addvideosandroom')
            // },1000)  
            this.$swal("Create Room Success .", "", "success")
        }
    },
    computed:{

    }
}
</script>
