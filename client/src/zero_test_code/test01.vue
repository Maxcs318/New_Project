<template>
    <div class="container mt-5">
        <!-- test slice text -->
        {{text.slice(0,-10)}}  <br>
        <!-- ตัดข้างหลังออก 10 ตัว -->
        <!-- value = abcdefghijklmnop -->

        {{text.slice(0,10)}}   <br>
        <!-- เอาตั้งแต่ตัวแรกถึงตัวที่ 10 -->
        <!-- value = abcdefghij -->

        {{text.slice(10,text.length)}}   <br>
        <!-- เอาตั้งแต่ตัวที่ 11 ถึงตัวสุดท้าย -->
        <!-- value = klmnopqrstuvwxyz -->


        
    </div>
</template>
<script>
export default {
    data(){
        return{
            text:'abcdefghijklmnopqrstuvwxyz'
        }
    }
}
</script>

