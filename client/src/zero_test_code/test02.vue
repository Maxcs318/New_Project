<template>
    <div class="container ">

        <book-interesting></book-interesting>
        <training-courses-interesting></training-courses-interesting>

    </div>        
</template>
<script>
import axios from 'axios'  
import bookinteresting from '../components/Other_interesting/book_interesting'
import traningcoursesinteresting from '../components/Other_interesting/traning_courses_interesting'
export default {
    data(){
        return{
            
        }
    },  
    components:{
        BookInteresting : bookinteresting,
        TrainingCoursesInteresting : traningcoursesinteresting

    },
    methods:{
        
    },
    watch:{
        
    },
    mounted () {
    
    },
    computed:{
    
    }
}
</script>
