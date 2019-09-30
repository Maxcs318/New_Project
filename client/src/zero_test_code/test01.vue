<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-xs-12">
                {{Test}}
            </div>
            <div class="col-lg-6 col-xs-12">
                {{Test2}}
            </div> 
        </div>
    </div>
</template>
<script>
export default {
    computed:{
        Test(){
            var x = this.$store.getters.getFiles
            return x
        },
        Test2(){
            var y = this.Test.length
            // var y = this.$store.getters.getArticle_Set_Category
            return y
        }
    }
}
</script>
