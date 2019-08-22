<template>
  <div>
    <div class="container" v-if="this.$store.state.statusPage == 'none' ">
      <loadingpage></loadingpage>          
    </div>
    <div v-else>
      <navbar></navbar>
      <div class="">
        
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

  export default {
    components :{
      navbar : Nav,
      foot : Footer,
      loadingpage : Loadingpage,
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
