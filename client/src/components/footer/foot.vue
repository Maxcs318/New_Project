<template>
  <div>
    <footer>
      <!-- <p class="footer-line"></p> -->
      <br />
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-2 col-12">
            <img class="footer-logo" :src="path_files+'footer_img/logo.jpg'" />
          </div>
          <div class="col-lg-8 col-12">
            <br />
            <label>GAMA THAILAND</label>
            <br />
            <label>138 อาคารจูเวลเลอรี่ เซ็นเตอร์ ชั้น 12 ห้อง 138/32</label>
            <br />
            <label>ถ.นเรส ซ.บางรัก กทม.10500</label>
            <br />
            <label>Tel: 02-6315885 ต่อ 14 Fax: 02-6318908</label>
          </div>

          <div class="col-lg-2 social">
            <br />
            <img :src="path_files+'footer_img/facebook-logo.png'" />
            <img :src="path_files+'footer_img/instagram-logo.png'" alt />
            <img :src="path_files+'footer_img/youtube-logo.png'" alt />
            <img :src="path_files+'footer_img/line-logo.png'" alt />
          </div>
          <div class="col-4 social-mb"></div>
          <div class="col-4 social-mb">
            <br />
            <img :src="path_files+'footer_img/facebook-logo.png'" alt />
            <img :src="path_files+'footer_img/instagram-logo.png'" alt />
            <img :src="path_files+'footer_img/youtube-logo.png'" alt />
            <img :src="path_files+'footer_img/line-logo.png'" alt />
          </div>
          <div class="col-4 social-mb"></div>
        </div>

        <div class="row">
          <div class="col-lg-2"></div>
          <div class="col-lg-10">
            <p>© 2019 GAMA Thailand, All Rights Reserved.</p>
          </div>
          <div class="col-lg-2"></div>
        </div>
      </div>
    </footer>
  </div>
</template>
<script>
export default {
  computed: {
    path_files() {
      return this.$store.getters.getPath_Files;
    }
  }
};
</script>
<style>
footer {
  position: relative;
  border-top: 1px solid rgba(142, 142, 142, 0.5);
  background-color: #fff;
}

.footer-line {
  height: 2px;
  margin-top: 100px;
  background: rgba(142, 142, 142, 0.5);
}

.footer-logo {
  width: 158px;
  display: block;
  margin-left: auto;
  margin-top: 23px;
}

footer label {
  font-style: normal;
  font-weight: 600;
  font-size: 18px;
  line-height: 29px;
  color: #6a6a6a;
}

footer p {
  font-style: normal;
  font-weight: 500;
  font-size: 13px;
  margin-top: 33px;
  margin-bottom: 58px;
  line-height: 18px;
  color: #6a6a6a;
}

.social img {
  width: 23px;
}
.social-mb {
  display: none;
}

@media only screen and (max-width: 600px) {
  .footer-logo {
    margin-left: auto;
    margin-right: auto;
  }

  footer label,
  p {
    display: block;
    line-height: 0;
    text-align: center;
  }
  .social {
    display: none;
  }
  .social-mb {
    display: block;
  }
  .social-mb img {
    width: 21%;
    margin: 0 auto;
  }
}
</style>