<template>
  <div>
    <b-carousel id="carousel1"
                style="text-shadow: 1px 1px 2px #333;"
                controls
                indicators
                background="#ababab"
                :interval="500"
                width="100%"
                v-model="slide"
                @sliding-start="onSlideStart"
                @sliding-end="onSlideEnd"
    >
      <b-carousel-slide v-for="(src,index) in image_sources" v-bind:key="index" v-bind:img-src="src"></b-carousel-slide>        
    </b-carousel>
  </div>
</template>

<script>
export default {
    name:'carousel',
  data () {
    return {
      image_sources:[
        "https://picsum.photos/1024/480/?image=52",
        "https://picsum.photos/1024/480/?image=53",
        "https://picsum.photos/1024/480/?image=54",
        "https://picsum.photos/1024/480/?image=55",
        "https://picsum.photos/1024/480/?image=56"
      ],
      slide: 0,
      sliding: null
    }
  },
  methods: {
    onSlideStart (slide) {
      this.sliding = true
    },
    onSlideEnd (slide) {
      this.sliding = true
    }
  }
}
</script>
<!-- carousel-1.vue -->