<template>
    <div class="container mt-3">
        <center><h4>Add Video</h4></center>
        <div class="row">
            <div class="col-lg-3 col-xs-12"></div>
            <div class="col-lg-6 col-xs-12">
                <form @submit.prevent="submitAddvideos">
                    <h5>Select Room</h5>
                    <select class="form-control">
                        <option disabled selected> Select Room </option>
                        <option > Room 1 </option>
                    </select>
                    <br>
                    <h5>Video Name</h5>
                    <input v-model="addVideos.v_name" type="text" class="form-control">
                    <br>
                    <h5>Video Link ( Embed )</h5>
                    <input v-model="addVideos.v_link" type="text" class="form-control">
                    <br>
                    <h5>Description</h5>
                    <textarea v-model="addVideos.v_description" class="form-control" rows="6" ></textarea>
                    <br>
                    <div class="row">
                        <div class="col-lg-6 col-xs-6"></div>
                        <div class="col-lg-6 col-xs-6">
                            <button class="form-control btn-primary" type="submit"> Add. </button>
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
            addVideos:{
                v_name:'',
                v_description:'',
                v_link:'',
                v_room:''
            }
        }
    }
}
</script>
