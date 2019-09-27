<template>
    <div class="container">
        <h5><center>Gallery Event</center></h5>
        <div class="row">
            <div class="col-lg-3 col-xs-12" 
                 v-for="(gallery,index) in Gallery.slice().reverse()" :key="index"
                 @click="seethisGallery(gallery.g_id)"
            >
                <img :src="getImgUrlGallery(gallery.g_image)" width="100%"/>
                {{gallery.g_name}}
            <br><br>
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    methods:{
        getImgUrlGallery(pic) {
            return this.path_files + "Gallery/" + pic;
        },
        seethisGallery(this_Gallery){
            this.$router.push({name:'gallery',params:{GalleryID:this_Gallery}});
        },
    },
    computed:{
        path_files() {
            return this.$store.getters.getPath_Files;
        },
        Gallery(){
            return this.$store.getters.getGallery
        },
    },
    created(){
        this.$store.dispatch("initDataGallery")
        this.$store.dispatch("initDataGallery_Image")
    }
}
</script>
