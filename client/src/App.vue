<template>
  <div>
    <div class="container" v-if="this.$store.state.statusPage == 'none' ">
      <loadingpage></loadingpage>          
    </div>
    <div v-else>
      
      <navbar v-if="this.$store.state.the_user == ''"></navbar>
      <navbarmember v-if="this.$store.state.the_user != ''"></navbarmember>
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
  import Nav_Member from './components/Navbar/nav_member.vue';
  import Footer from './components/Footer/foot.vue';
  import Loadingpage from './components/loadingpage/loadingData';

  export default {
    components :{
      navbar : Nav,
      navbarmember : Nav_Member,
      foot : Footer,
      loadingpage : Loadingpage,
    },
    created(){
      this.$store.dispatch("initApp")
      this.$store.dispatch("initMembers")
      this.$store.dispatch("initDataMember_Type")
      this.$store.dispatch("initDataNews")
      this.$store.dispatch("initDataArticle")
      this.$store.dispatch("initDataArticle_Category")
      this.$store.dispatch("initDataFiles")
      this.$store.dispatch("initDataProduct")
      this.$store.dispatch("initDataProduct_Category")
      this.$store.dispatch("initDataProduct_Image")
      this.$store.dispatch("initDataVideos")
      this.$store.dispatch("initDataVideo_Room")    
      this.$store.dispatch("initDataOrders")    
      this.$store.dispatch("initDataOrder_Items")    
      this.$store.dispatch("initDataOrder_Status")    
      this.$store.dispatch("initDataShipping_Address")
      this.$store.dispatch("initDataPayment")
      this.$store.dispatch("initDataBanking")
      this.$store.dispatch("initDataMoney_Transfer")
      this.$store.dispatch("initDataGallery")
      this.$store.dispatch("initDataGallery_Image")
      this.$store.dispatch("initDataAcademic_Article")
      this.$store.dispatch("initDataAcademic_Article_Category")
      this.$store.dispatch("initDataOnline_Journal")
      this.$store.dispatch("initDataMember_Upgrade_Date")
      

          
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
