<template>
  <div>
    <navbar v-if="this.$store.state.the_user != '' "></navbar>
    <div class="container">

      
      <transition name="page" mode="out-in">
        <div>
          <login-page v-if="this.$store.state.the_user == '' "></login-page>
          <router-view v-else></router-view>
        </div>
      </transition>
    
    </div>
  </div>
</template>

<script>
  import Nav from './components/navbar/nav';
  import Login from './components/Login/loginPage';

  export default {
    components :{
      navbar : Nav,
      loginPage : Login
    },
    created(){
      this.$store.dispatch("initApp")
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
