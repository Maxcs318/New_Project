<template>
    <div class="container mt-3">
        <center><h4>Add Videos & Room</h4></center>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <addroom></addroom>
                <addvideo></addvideo>
            </div>
        </div>
    </div>
</template>
<script>
import addRoom from './addRoom';
import addVideo from './addVideo';
export default {
    components:{
        addroom : addRoom,
        addvideo : addVideo
    }
}
</script>

