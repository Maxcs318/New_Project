<template>
<div>
  <body>
    <button @click="PopupLogin" style="width:auto;">Login</button>
    <div id="id02" class="modal">
      <login></login>
      <!-- <form
        class="modal-content animate"
        action="./../components/Login_Register/loginPage.vue"
        method="post"
      >
        <div class="imgcontainer">
          <span onclick="document.getElementById('id01').style.display='none'" class="close">&times;</span>
        </div>

        <div class="container">
          <input type="text" placeholder="ชื่อ" name="uname" required />
          <br />
          <input type="password" placeholder="อีเมล์" name="psw" required />
          <br />
          <br />
          <center>
            <button type="submit">เข้าสู่ระบบ</button>
            <br />
            <a href="#" class="forgot-pass">ลืมรหัสผ่าน</a>
          </center>
        </div>
      </form>-->
    </div>
  </body>
</div>
</template>
<script>
import logintest from "./../components/Login_Register/loginPage";
// Get the modal
// var modal = document.getElementById("id01");
export default {
  components: {
    login: logintest
  },
  methods: {
    PopupLogin() {
      document.getElementById("id02").style.display = "block";
    }
  }
};
// // When the user clicks anywhere outside of the modal, close it
// window.onclick = function(event) {
//   if (event.target == modal) {
//     modal.style.display = "block";
//   }
// };
</script>
<style scoped>
/* Full-width input fields */
input[type="text"],
input[type="password"] {
  width: 80%;
  padding: 8px 16px;
  margin: auto;
  display: block;
  border: 1px solid #ccc;
  border-radius: 5px;
  background: none;
  color: #e0e0e0;
  opacity: 0.7;
  font-size: 18px;
  box-sizing: border-box;
}
::placeholder {
  color: #e0e0e0;
  opacity: 0.7;
}

/* Set a style for all buttons */
button {
  background-color: #eecd02;
  border-radius: 14px;
  color: #093f84;
  padding: 9px 32px;
  font-size: 18px;
  font-weight: 600;
  line-height: 150%;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: auto;
}

button:hover {
  opacity: 0.7;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0, 0, 0); /* Fallback color */
  background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
  padding-top: 60px;
}
.forgot-pass {
  font-size: 18px;
  color: #fff;
  font-weight: 600px;
}
.forgot-pass:hover {
  color: gray;
  text-decoration: none;
}

/* Modal Content/Box */
.modal-content {
  background-color: #1a2a3e;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  border-radius: 6px;
  width: 442px; /* Could be more or less, depending on screen size */
  height: 355px;
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  color: #fff;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  opacity: 0.5;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s;
}

@-webkit-keyframes animatezoom {
  from {
    -webkit-transform: scale(0);
  }
  to {
    -webkit-transform: scale(1);
  }
}

@keyframes animatezoom {
  from {
    transform: scale(0);
  }
  to {
    transform: scale(1);
  }
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
}
</style>