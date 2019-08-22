<template>
    <div class="">
        <carousel></carousel>
        <div class="container">
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
            <div class="row">
                <div class="col-lg-9"></div>
                <div class="col-lg-3"><br><br>
                    <button class="form-control btn-primary" @click="scrollToTop">Top</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import Carousel from '../components/WelcomePage/Carousel'
import News from '../components/WelcomePage/News'
import Article from '../components/WelcomePage/Article'
import Book from '../components/WelcomePage/Book'
import TrainingCourse from '../components/WelcomePage/TrainingCourse'
export default {
    methods:{
        scrollToTop() {
            window.scrollTo(0,0)
        }
    },
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

