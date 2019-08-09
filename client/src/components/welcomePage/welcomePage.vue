<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <carousel></carousel>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <news></news>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <thearticle></thearticle>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <book></book>
            </div>
        </div>
        <br>
    </div>
</template>
<script>
import Carousel from './homepage/Carousel'
import News from './homepage/News'
import Article from './homepage/article'
import Book from './homepage/book'
export default {
    components:{
        carousel : Carousel,
        news : News,
        thearticle : Article,
        book : Book
    },
    created(){
      this.$store.dispatch("initNews")
    }
}
</script>

