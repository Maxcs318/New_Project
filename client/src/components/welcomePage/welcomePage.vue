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
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <training-course></training-course>
            </div>
        </div>
        <br>
    </div>
</template>
<script>
import Carousel from './homepage/Carousel'
import News from './homepage/News'
import Article from './homepage/Article'
import Book from './homepage/Book'
import TrainingCourse from './homepage/TrainingCourse'
export default {
    components:{
        carousel : Carousel,
        news : News,
        thearticle : Article,
        book : Book,
        trainingCourse:TrainingCourse
    },
    created(){
      this.$store.dispatch("initApp")
      this.$store.dispatch("initData")
    }
}
</script>

