<template>
    <div class="container">
        <h4 class="mt-3">ข่าวสาร & กิจกรรม ( ลำดับจาก ล่าสุด -> เก่า )</h4> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="addnews">Add News & Activity</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:35%">News Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(news,index) in the_news" :key="index">
                        <td>{{news.n_id}}</td>
                        <td>{{news.n_title.slice(0,35)}}</td>
                        <td>{{news.n_create_date}}</td>
                        <td>{{news.n_update_date}}</td>
                        <td> <button class="form-control btn-warning" @click="editNews(news.n_id)">Edit</button> </td>
                        <td> <button class="form-control btn-danger">Delete</button> </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        addnews(){
            this.$router.push('/addnews')
        },
        editNews(thisnews){
            this.$router.push({name:'editnewsandactivity',params:{NewsID:thisnews}});
        }
    },
    computed:{
        the_news(){
            return this.$store.getters.getNews
        },
        the_user(){
            return this.$store.getters.getThe_User
        }
    },
    created(){
        this.$store.dispatch("initDataNews")
    }
}
</script>
