<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h4><center>Manage Member</center></h4>
                <div class="row"> 
                    <div class="col-lg-2"></div>
                    <div class="col-lg-2">
                        Select By : {{select}}
                        <input type="text" class="form-control" v-model="select">
                        <br>
                    </div>
                    <div class="col-lg-6">
                        Search : {{search}}
                        <input type="text" class="form-control" v-model="search">
                        <br>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:20%">First Name</th>
                        <th style="width:20%">Last Name </th>
                        <th style="width:20%">User Name</th>
                        <th style="width:15%">Member Type</th>                        
                        <th style="width:20%">  </th>
                    </tr>
                    <tr v-for="(member,index) in Members" :key="index" >
                        <td>{{member.m_id}}</td>
                        <td>{{member.m_firstname.slice(0,35)}}</td>
                        <td>{{member.m_lastname}}</td>
                        <td>{{member.m_username}}</td>
                        <td> 
                            <div v-for="mt in Member_Type" v-if="mt.mt_id == member.m_type">
                                {{mt.mt_name}}
                            </div>
                        </td>
                        <td> <button class="form-control btn-warning" @click="editMember(member.m_id)">Edit</button> </td>
                    </tr>
                </table>
                <!-- {{Member_Type}} -->
                <br>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            select:'',
            search:''
        }
    },
    methods:{
        editMember(thismemberID){
            // console.log(thismemberID)
            this.$router.push({name:'editmember_by_admin',params:{MemberID:thismemberID}});
        }
    },
    computed:{
        Members(){
            return this.$store.getters.getMembers
        },
        Member_Type(){
            return this.$store.getters.getMember_Type
        }
    },
    created(){
        this.$store.dispatch("initMembers")
        this.$store.dispatch("initDataMember_Type")
    }
}
</script>
