<template>
    <div class="container ">
        <div class="row ">
            <div class="col-lg-12 col-xs-12">
                <br><br><br><br>
            </div>
            <div class="col-lg-12 col-xs-12">
                <div class="breeding-rhombus-spinner" align="center">
                <div class="rhombus child-1"></div>
                <div class="rhombus child-2"></div>
                <div class="rhombus child-3"></div>
                <div class="rhombus child-4"></div>
                <div class="rhombus child-5"></div>
                <div class="rhombus child-6"></div>
                <div class="rhombus child-7"></div>
                <div class="rhombus child-8"></div>
                <div class="rhombus big"></div>
        </div>
            </div>
        </div>
    </div>
</template>

<style>
    .breeding-rhombus-spinner {
      height: 165px;
      width: 165px;
      position: relative;
      transform: rotate(45deg);
    }

    .breeding-rhombus-spinner, .breeding-rhombus-spinner * {
      box-sizing: border-box;
    }

    .breeding-rhombus-spinner .rhombus {
      height: calc(165px / 7.5);
      width: calc(165px / 7.5);
      animation-duration: 2000ms;
      top: calc(165px / 2.3077);
      left: calc(165px / 2.3077);
      background-color: #1d21ff;
      position: absolute;
      animation-iteration-count: infinite;
    }

    .breeding-rhombus-spinner .rhombus:nth-child(2n+0) {
       margin-right: 0;
     }

    .breeding-rhombus-spinner .rhombus.child-1 {
      animation-name: breeding-rhombus-spinner-animation-child-1;
      animation-delay: calc(100ms * 1);
      background-color: rgb(56, 53, 230);
    }

    .breeding-rhombus-spinner .rhombus.child-2 {
      animation-name: breeding-rhombus-spinner-animation-child-2;
      animation-delay: calc(100ms * 2);
      background-color: rgb(55, 89, 245);
    }

    .breeding-rhombus-spinner .rhombus.child-3 {
      animation-name: breeding-rhombus-spinner-animation-child-3;
      animation-delay: calc(100ms * 3);
      background-color: rgb(0, 44, 189);
    }

    .breeding-rhombus-spinner .rhombus.child-4 {
      animation-name: breeding-rhombus-spinner-animation-child-4;
      animation-delay: calc(100ms * 4);
      background-color: rgb(49, 137, 253);
    }

    .breeding-rhombus-spinner .rhombus.child-5 {
      animation-name: breeding-rhombus-spinner-animation-child-5;
      animation-delay: calc(100ms * 5);
      background-color: rgb(56, 53, 230);
    }

    .breeding-rhombus-spinner .rhombus.child-6 {
      animation-name: breeding-rhombus-spinner-animation-child-6;
      animation-delay: calc(100ms * 6);
      background-color: rgb(55, 89, 245);
    }

    .breeding-rhombus-spinner .rhombus.child-7 {
      animation-name: breeding-rhombus-spinner-animation-child-7;
      animation-delay: calc(100ms * 7);
      background-color: rgb(0, 44, 189);
    }

    .breeding-rhombus-spinner .rhombus.child-8 {
      animation-name: breeding-rhombus-spinner-animation-child-8;
      animation-delay: calc(100ms * 8);
      background-color: rgb(49, 137, 253);
    }

    .breeding-rhombus-spinner .rhombus.big {
      height: calc(165px / 3);
      width: calc(165px / 3);
      animation-duration: 2000ms;
      top: calc(165px / 3);
      left: calc(165px / 3);
      background-color: rgb(35, 8, 184);
      animation: breeding-rhombus-spinner-animation-child-big 2s infinite;
      animation-delay: 0.5s;
    }


    @keyframes breeding-rhombus-spinner-animation-child-1 {
      50% {
        transform: translate(-325%, -325%);
      }
    }

    @keyframes breeding-rhombus-spinner-animation-child-2 {
      50% {
        transform: translate(0, -325%);
      }
    }

    @keyframes breeding-rhombus-spinner-animation-child-3 {
      50% {
        transform: translate(325%, -325%);
      }
    }

    @keyframes breeding-rhombus-spinner-animation-child-4 {
      50% {
        transform: translate(325%, 0);
      }
    }

    @keyframes breeding-rhombus-spinner-animation-child-5 {
      50% {
        transform: translate(325%, 325%);
      }
    }

    @keyframes breeding-rhombus-spinner-animation-child-6 {
      50% {
        transform: translate(0, 325%);
      }
    }

    @keyframes breeding-rhombus-spinner-animation-child-7 {
      50% {
        transform: translate(-325%, 325%);
      }
    }

    @keyframes breeding-rhombus-spinner-animation-child-8 {
      50% {
        transform: translate(-325%, 0);
      }
    }

    @keyframes breeding-rhombus-spinner-animation-child-big {
      50% {
        transform: scale(0.5);
      }
    }
</style>

