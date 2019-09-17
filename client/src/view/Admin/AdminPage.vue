<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-xs-12">
                <button type="button" class="form-control btn-primary" @click="news">News & Activity</button> <br>
            </div>
            <div class="col-lg-6 col-xs-12">
                <button type="button" class="form-control btn-success" @click="article">Article</button> <br>
            </div>
            <div class="col-lg-6 col-xs-12">
                <button type="button" class="form-control btn-dark" @click="product">Product</button> <br>
            </div>
            <div class="col-lg-6 col-xs-12">
                <button type="button" class="form-control btn-danger" @click="video_room">Video Room & Videos</button> <br>
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    methods:{
        news(){
            this.$router.push('/AdminN')
        },
        article(){
            this.$router.push('/AdminA')
        },
        product(){
            this.$router.push('/AdminP')
        },
        video_room(){
            this.$router.push('/AdminLR')
        }
    }
}
</script>

