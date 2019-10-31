<template>
  <div class="container" v-if="the_user && thisAward_list">
    <h3 class="header">
      <center>Edit Award Recipients</center>
    </h3>
    <div class="row">
      <div class="col-lg-3 col-xs-12"></div>
      <div class="col-lg-6 col-xs-12">
        <form @submit.prevent="submitAward_List">
          ผู้ได้รับรางวัล ( ชื่อเต็ม *** ชื่อจริง + นามสกุล )
          <input
            type="text"
            class="form-control"
            v-model="award_list.al_recipient"
            placeholder="ผู้ได้รับรางวัล"
            required
          />
          <br />
          <div class="row">
            <div class="col-lg-12 col-12">
              บริษัท
              <select v-model="award_list.al_company_id" class="form-control" required>
                <!-- <option selected disabled value=''>Choose Company</option> -->
                <option v-for="comp in Company" :value="comp.c_id">{{ comp.c_title }}</option>
              </select>
              <br />
            </div>
            <div class="col-lg-6 col-12">
              ประเภทรางวัล
              <select v-model="award_list.al_award_type_id" class="form-control" required>
                <!-- <option selected disabled value=''>Choose Award Type</option> -->
                <option v-for="at in Award_type" :value="at.at_id">{{ at.at_title }}</option>
              </select>
              <br />
            </div>
            <div class="col-lg-6 col-12">
              ปี
              <select v-model="award_list.al_year_id" class="form-control" required>
                <!-- <option selected disabled value=''>Choose Year</option> -->
                <option v-for="ay in Award_year" :value="ay.ay_id">{{ ay.ay_title }}</option>
              </select>
              <br />
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6"></div>
            <div class="col-lg-6">
              <button type="submit" class="form-control btn-primary col-12">Save</button>
              <br />
            </div>
          </div>
        </form>
        <br />
      </div>
      <div class="col-lg-3 col-xs-12"></div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      award_list: null
    };
  },
  methods: {
    submitAward_List() {
      var jsonAward_list = JSON.stringify(this.award_list);
      var FD = new FormData();
      FD.append("award_list", jsonAward_list);
      FD.append("creator", JSON.stringify(this.$store.state.log_on));
      this.$store.dispatch("Edit_Award_list", FD);
      setTimeout(() => {
        this.$router.go(-1);
      }, 2000);
      this.$swal("Edit Award Recipient Success .", "", "success");
    }
  },
  computed: {
    the_user() {
      var user = this.$store.getters.getThe_User;
      if (user.m_status != "admin") {
        // this.$router.go(-1)
      }
      return user;
    },
    thisAward_list() {
      var award_list_all = this.$store.getters.getAward_List;
      var this_award;
      for (var i = 0; i < award_list_all.length; i++) {
        if (award_list_all[i].al_id == this.$route.params.Award_listID) {
          this_award = award_list_all[i];
        }
      }
      this.award_list = this_award;
      return this_award;
    },
    Award_type() {
      return this.$store.getters.getAward_Type;
    },
    Award_year() {
      return this.$store.getters.getAward_Years;
    },
    Company() {
      return this.$store.getters.getCompany;
    }
  }
};
</script>

<style scoped>
select,
option {
  background-color: #1a2a3e;
  color: #e0e0e0;
  border: 1px solid #3f4d63;
  box-sizing: border-box;
  border-radius: 5px;
}

select:focus {
  background-color: #1a2a3e;
  color: #e0e0e0;
}
</style>