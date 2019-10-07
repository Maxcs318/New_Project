<template>
    <div class="container" v-if="the_user">
        <h4 class=" "> Online Journal ( ลำดับจาก ล่าสุด -> เก่า )</h4> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="addonline_journal">Add Online Journal</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:35%">Online Journal Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(online_journal,index) in the_online_journal.slice().reverse()" :key="index">
                        <td>{{online_journal.oj_id}}</td>
                        <td>{{online_journal.oj_title.slice(0,35)}}</td>
                        <td>{{online_journal.oj_create_date}}</td>
                        <td>{{online_journal.oj_update_date}}</td>
                        <td> <button class="form-control btn-warning" @click="editonline_journal(online_journal.oj_id)">Edit</button> </td>
                        <td> <button class="form-control btn-danger"  @click="deleteonline_journal(online_journal.oj_id)">Delete</button> </td>
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
        addonline_journal(){
            this.$router.push('/addonline_journal')
        },
        editonline_journal(this_online_journal){
            this.$router.push({name:'editonline_journal',params:{Online_JournalID:this_online_journal}});
        },
        deleteonline_journal(this_online_journal){
            // console.log(this_online_journal)
            var FD  = new FormData()
            FD.append('online_journalID',JSON.stringify(this_online_journal))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$swal({
                title: "Are you sure?",
                text: "You want delete this Online Journal ID "+this_online_journal,
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    this.$store.dispatch("Delete_Online_Journal",FD)
                    swal({title: "Delete Success.",icon: "success",});
                    // console.log(FD)
                } else {
                    // swal("Your imaginary file is safe!");
                }
            })

            
        }
    },
    computed:{
        the_online_journal(){
            return this.$store.getters.getOnline_Journal
        },
        the_user(){
            var user = this.$store.getters.getThe_User
            if( user.m_status != 'admin' ){
                this.$router.go(-1)
            }
            return user
        }
    },
    created(){
        this.$store.dispatch("initDataOnline_Journal")
        this.$store.dispatch("initDataFiles")
    }
}
</script>
