<template>
    <div class="container mt-3">
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button @click="changShow" class="form-control btn-success"> {{showComponent}} </button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <addroom v-if="showComponent != 'createroom'"></addroom>
                <addvideo v-else></addvideo>
            </div>
        </div>
    </div>
</template>
<script>
import addRoom from './addRoom';
import addVideo from './addVideo';
export default {
    data(){
        return {
            showComponent:'createroom'
            // showComponent:'createroom'
        }
    },
    methods:{
        changShow(){
            if(this.showComponent == 'createroom' ){
                this.showComponent = 'addvideos'
            }else{
                this.showComponent = 'createroom'
            }
        }
    },
    components:{
        addroom : addRoom,
        addvideo : addVideo
    }
}
</script>

