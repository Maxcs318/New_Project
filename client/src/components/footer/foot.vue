<template>
  <div>
    <footer>
      <!-- <p class="footer-line"></p> -->
      <br />
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-2 col-xs-12">
            <img class="footer-logo float-right" src="./../../assets/image/logo.jpg" />
          </div>
          <div class="col-lg-8 col-xs-12">
            <label>GAMA THAILAND</label>
            <br />
            <label>138 อาคารจูเวลเลอรี่ เซ็นเตอร์ ชั้น 12 ห้อง 138/32</label>
            <br />
            <label>ถ.นเรส ซ.บางรัก กทม.10500</label>
            <br />
            <label>Tel: 02-6315885 ต่อ 14 Fax: 02-6318908</label>
          </div>
          <div class="col-lg-2 social">
            <img src="./../../assets/image/facebook-logo.png" alt />
            <img src="./../../assets/image/instagram-logo.png" alt />
            <img src="./../../assets/image/youtube-logo.png" alt />
            <img src="./../../assets/image/line-logo.png" alt />
          </div>
        </div>
        <div class="row">
          <div class="col-lg-2"></div>
          <div class="col-lg-10 col-xs-12">
            <p>© 2019 GAMA Thailand, All Rights Reserved.</p>
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>
<script>
export default {};
</script>
<style>
footer {
  position: relative;
  border-top: 1px solid rgba(142, 142, 142, 0.5);
  background-color: #fff;
}
.social {
  padding: 0;
}
.footer-line {
  height: 2px;
  margin-top: 100px;
  background: rgba(142, 142, 142, 0.5);
}

.footer-logo {
  width: 158px;
  margin: 0;
}

footer img {
  width: 27px;
  margin-top: 29px;
  margin-right: 10%;
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

@media only screen and (max-width: 600px) {
  .footer-logo {
    display: block;
    margin: 0 123px 23px;
  }
  footer label,
  p {
    display: block;
    line-height: 0;
    text-align: center;
  }
  footer img {
    margin-left: 7%;
  }
}
</style>