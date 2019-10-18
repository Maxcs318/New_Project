<template>
  <div>
    <b-navbar toggleable="lg" type="dark" class="navbar float-right">
      <router-link to="/">
        <b-navbar-brand>
          <img :src="path_files+'logo_img/logo-white.png'" />
        </b-navbar-brand>
      </router-link>

      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav class="ml-auto">
          <router-link to="/">
            <b-navbar-brand>
              <b-nav-text>
                <h5 class="text-test">หน้าหลัก</h5>
              </b-nav-text>
            </b-navbar-brand>
          </router-link>
        </b-navbar-nav>
        <b-navbar-nav>
          <router-link to="/aboutmember">
            <b-navbar-brand>
              <b-nav-text>
                <h5 class="text-test">เกี่ยวกับสมาชิก</h5>
              </b-nav-text>
            </b-navbar-brand>
          </router-link>
        </b-navbar-nav>
        <b-navbar-nav>
          <router-link to="/newsandactivities/1">
            <b-navbar-brand>
              <b-nav-text>
                <h5 class="text-test">ข่าวกิจกรรม</h5>
              </b-nav-text>
            </b-navbar-brand>
          </router-link>
        </b-navbar-nav>
        <b-navbar-nav>
          <router-link to="/articles/1">
            <b-navbar-brand>
              <b-nav-text>
                <h5 class="text-test">บทความ</h5>
              </b-nav-text>
            </b-navbar-brand>
          </router-link>
        </b-navbar-nav>
        <b-navbar-nav>
          <router-link to="/training_courses/1">
            <b-navbar-brand>
              <b-nav-text>
                <h5 class="text-test">หลักสูตร & อบรม</h5>
              </b-nav-text>
            </b-navbar-brand>
          </router-link>
        </b-navbar-nav>
        <b-navbar-nav>
          <router-link to="/books/1">
            <b-navbar-brand>
              <b-nav-text>
                <h5 class="text-test">หนังสือ</h5>
              </b-nav-text>
            </b-navbar-brand>
          </router-link>
        </b-navbar-nav>
        <b-navbar-nav>
          <router-link to="/contact">
            <b-navbar-brand>
              <b-nav-text>
                <h5 class="text-test">ติดต่อเรา</h5>
              </b-nav-text>
            </b-navbar-brand>
          </router-link>
        </b-navbar-nav>

        <b-navbar-nav>
          <!-- <button class="form-control btn-light" v-if="this.$store.state.the_user == '' " @click="register"> Register </button> -->
          <button
            class="login-btn"
            v-if="this.$store.state.the_user == '' "
            @click="PopupLogin1"
          >Log in</button>

          <div id="loginpopup" class="modal">
            <loginpop></loginpop>
          </div>

          <b-nav-item-dropdown style="color:red;" right v-if="this.$store.state.the_user != '' ">
            <template slot="button-content">{{this.$store.state.the_user.m_username}}</template>
            <b-dropdown-item
              @click="admin"
              v-if="this.$store.state.the_user.m_status == 'admin' "
            >Admin</b-dropdown-item>
            <b-dropdown-item @click="profile">Profile</b-dropdown-item>
            <b-dropdown-item @click="videosroom">Video Room</b-dropdown-item>
            <b-dropdown-item @click="productall">Product All</b-dropdown-item>
            <b-dropdown-item @click="my_cart">My Cart</b-dropdown-item>
            <b-dropdown-divider></b-dropdown-divider>
            <b-dropdown-item @click="Log_Out">Log Out</b-dropdown-item>
          </b-nav-item-dropdown>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
  </div>
</template>
<script>
import logintest from "../Login_Register/loginPage";

export default {
  components: {
    loginpop: logintest
  },
  data() {
    return {
      active: false
    };
  },
  computed: {
    path_files() {
      return this.$store.getters.getPath_Files;
    }
  },
  methods: {
    PopupLogin1() {
      document.getElementById("loginpopup").style.display = "block";
    },
    Log_Out() {
      this.$store.dispatch("Log_Out").then(() => {
        // this.$router.go()
      });
    },
    Log_in() {
      this.$router.push("/login");
    },
    register() {
      this.$router.push("/register");
    },
    profile() {
      this.$router.push("/myProfile");
    },
    videosroom() {
      this.$router.push("/listroom/1");
    },
    productall() {
      this.$router.push("/productall/1");
    },
    admin() {
      this.$router.push("/Admin");
    },
    my_cart() {
      this.$router.push("/my_cart");
    }
  }
};
</script>
<style>
.navbar-dark .navbar-nav .nav-link {
  color: white;
}

.navbar {
  border-top: 4px solid #eecd02;
  background: none;
  z-index: 1;
  width: 100%;
}

.navbar h5 {
  font-style: normal;
  font-weight: 600;
  font-size: 17px;
  line-height: 27px;
  margin-right: 25px;
  margin-top: 8px;
  color: #757575;
}

.navbar.text-test:focus {
  color: #eecd02;
}

.navbar .text-test:hover {
  color: #eecd02;
}

.navbar img {
  width: 150px;
  margin-left: 86px;
}

.btn-outline-primary {
  background: none;
}

/* Set a style for all buttons */
button.login-btn {
  background-color: #eecd02;
  border-radius: 2px;
  color: #093f84;
  padding: 4px 25px;
  font-size: 18px;
  font-weight: 600;
  line-height: 150%;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: auto;
}

button.login-btn:hover {
  opacity: 0.7;
}

.active{
  color: #eecd02;
}
@media only screen and (max-width: 600px) {
  .navbar {
    position: relative;
    z-index: 1;
    text-align: center;
  }
  .navbar img {
    width: 150px;
    margin-left: 0px;
  }
  .btn {
    margin: 0px;
    margin-top: 7px;
  }
  .navbar h5 {
    margin-right: 0;
  }
}
</style>






