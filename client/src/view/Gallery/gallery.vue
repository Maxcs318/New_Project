<template>
    <div class="container">
        <div class="row" v-if="thisGallery">
            <div class="col-lg-12 col-xs-12">
            <h5><center>Gallery Event : {{thisGallery.g_name}}</center></h5>
                <!-- {{Gallery}} -->
                <div class="row">
                    <div class="col-lg-3 col-lg-xs-12">
                        <!-- รูปแรกที่ใช้ prview -->
                        <img :src="getImgUrlGallery(thisGallery.g_image)" width="100%"/><br><br>
                    </div>
                    <div class="col-lg-3 col-lg-xs-12" v-for="(gi,index) in thisGallery_image" :key="index">
                        <!-- รูปอื่นๆ -->
                        <img :src="getImgUrlGallery(gi.gi_image)" width="100%"/><br><br>
                    </div>
                </div>
            <br>
            Description : {{thisGallery.g_description}}<br>
            Create On : {{thisGallery.g_create_date}}<br>
            Last Update : {{thisGallery.g_update_date}}<br>
            </div>
        </div>
        <div class="row" v-else-if="!thisGallery">
            <div class="col-lg-12 col-xs-12">
                <center><h4> this Gallery No Have. </h4></center>
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
    },
    computed:{
        path_files() {
            return this.$store.getters.getPath_Files;
        },
        thisGallery(){
            var galleryall = this.$store.getters.getGallery
            var gallery
                for(var i=0;i<galleryall.length;i++){
                    if(galleryall[i].g_id == this.$route.params.GalleryID){
                        gallery = galleryall[i]
                    }
                }
            return gallery
        },
        thisGallery_image(){
            var gallery_imageall = this.$store.getters.getGallery_Image
            var gallery_image = []
                for(var i=0;i<gallery_imageall.length;i++){
                    if(gallery_imageall[i].gi_gallery_id == this.$route.params.GalleryID){
                        gallery_image.push(gallery_imageall[i])
                    }
                }
            return gallery_image
        }
    },
    created(){
        this.$store.dispatch("initDataGallery")
        this.$store.dispatch("initDataGallery_Image")
    }
}
</script>
