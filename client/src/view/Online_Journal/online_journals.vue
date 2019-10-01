<template>
    <div class="container">
        <h4 class=" "> Online Journal ( ลำดับจาก ล่าสุด -> เก่า )</h4> <br>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">No</th>
                        <th style="width:35%">Online Journal Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:20%">  </th>
                    </tr>
                    <tr v-for="(online_journal,index) in the_online_journal.slice().reverse()" :key="index">
                        <td>{{index+1}}</td>
                        <td>{{online_journal.oj_title.slice(0,35)}}</td>
                        <td>{{online_journal.oj_create_date}}</td>
                        <td>{{online_journal.oj_update_date}}</td>
                        <td> <button class="form-control btn-primary" @click="seethis_online_journal(online_journal.oj_id)">See</button> </td>
                    </tr>
                </table>
                <br>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        seethis_online_journal(this_online_journal){
            this.$router.push({name:'online_journal',params:{Online_JournalID:this_online_journal}});
        },
    },
    computed:{
        the_online_journal(){
            return this.$store.getters.getOnline_Journal_For_User
        },
    },
    created(){
        this.$store.dispatch("initDataOnline_Journal")
        this.$store.dispatch("initDataFiles")
    }
}
</script>
