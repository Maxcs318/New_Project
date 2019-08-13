<template>
  <div>
    <div v-if="this.$store.state.statusPage == 'none' ">
      <center><loadingpage2></loadingpage2></center>
      <loadingpage></loadingpage>          
    </div>
    <div v-else>
      <navbar></navbar>
      <div class="container">
        
        <transition name="page" mode="out-in">
          <div>
            <router-view ></router-view>
          </div>
        </transition>
      
      </div>
      <foot></foot>
    </div>
  </div>
</template>

<script>
  import Nav from './components/Navbar/nav';
  import Footer from './components/Footer/foot.vue';
  import Loadingpage from './components/loadingpage/loadingData';
  import Loadingpage2 from './components/loadingpage/loading';

  export default {
    components :{
      navbar : Nav,
      foot : Footer,
      loadingpage : Loadingpage,
      loadingpage2 : Loadingpage2
    },
    created(){
      this.$store.dispatch("initApp")
      this.$store.dispatch("initData")
    }
    
  }

</script>
<style>
  .page-enter ,  .page-leave-active{
    opacity: 0;
  }
  .page-enter-active ,  .page-leave-active{
    transition: all .5s;
  } 

</style>
