<template>
    <div class="container ">
        <!-- test slice text -->
        <!-- //{{text.slice(0,-10)}}  <br> -->
        <!-- ตัดข้างหลังออก 10 ตัว -->
        <!-- value = abcdefghijklmnop -->

        <!-- //{{text.slice(0,10)}}   <br> -->
        <!-- เอาตั้งแต่ตัวแรกถึงตัวที่ 10 -->
        <!-- value = abcdefghij -->

        <!-- //{{text.slice(10,text.length)}}   <br> -->
        <!-- เอาตั้งแต่ตัวที่ 11 ถึงตัวสุดท้าย -->
        <!-- value = klmnopqrstuvwxyz -->
        
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4">
                Name
                <input type="text" class="form-control">
                Address
                <textarea class="form-control" rows="6"></textarea>
                Postcode
                <input type="text" class="form-control">
                Phone
                <input type="text" class="form-control">
                E-mail
                <input type="text" class="form-control">
                Company
                <input type="text" class="form-control">
            </div>
            <div class="col-4"></div>
        </div>


    </div>
</template>
<script>
export default {
    data(){
        return{
            text:'abcdefghijklmnopqrstuvwxyz',
        }
    },
    methods:{
        getImgUrl(pic) {
            return this.path_files+'Product/'+pic
        },
    },
    computed:{
        path_files(){
            return this.$store.getters.getPath_Files
        }
    }
}
</script>

