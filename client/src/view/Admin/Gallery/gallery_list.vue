<template>
    <div class="container">
        <h5>List Gallery</h5> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="addgallery">Add Gallery</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
            
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    methods:{
        addgallery(){
            this.$router.push('/addgallery')
        },
    }
}
</script>

