<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <h4><center>Manage Member</center></h4>
                <div class="row"> 
                    <div class="col-lg-2"></div>
                    <div class="col-lg-3">
                        Select By : {{selected}}
                        <select v-model="selected" class="form-control">
                            <option selected value=''> All </option>
                            <option v-for="sl in select" :value="sl.file" >
                                {{sl.file}}
                            </option>
                        </select>                        <br>
                    </div>
                    <div class="col-lg-5">
                        Search : {{search}}
                        <input type="text" class="form-control" v-model="search" v-if="this.selected!='member_type'">
                        <select v-model="search" class="form-control" v-if="this.selected == 'member_type'" >
                            <option selected value=''>Choose Type</option>
                            <option v-for="mt in Member_Type" :value="mt.mt_id">
                                {{mt.mt_name}}
                            </option>
                        </select>
                        <br>
                    </div>
                    <div class="col-lg-2"></div>
                </div>
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:15%">First Name</th>
                        <th style="width:15%">Last Name </th>
                        <th style="width:15%">First Name Eng </th>
                        <th style="width:15%">Last Name Eng </th>
                        <th style="width:10%">User Name</th>
                        <th style="width:15%">Member Type</th>                        
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(member,index) in listFilter" :key="index" >
                        <td>{{member.m_id}}</td>
                        <td>{{member.m_firstname.slice(0,35)}}</td>
                        <td>{{member.m_lastname}}</td>
                        <td>{{member.m_firstname_eng}}</td>
                        <td>{{member.m_lastname_eng}}</td>
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
            select:[
                {file:'firstname'},
                {file:'lastname'},
                {file:'firstname ENG'},
                {file:'lastname ENG'},
                {file:'username'},
                {file:'member_type'}
            ],
            selected:'',
            search:''
        }
    },
    methods:{
        editMember(thismemberID){
            // console.log(thismemberID)
            this.$router.push({name:'editmember_by_admin',params:{MemberID:thismemberID}});
        }
    },
    watch:{
        selected :function (val) {
            this.search = ''
        },
    },
    computed:{
        Member_Type(){
            return this.$store.getters.getMember_Type
        },
        Members(){

            return this.$store.getters.getMembers
        },
        listFilter () {
            let text = this.search.trim()
            if(this.selected == 'username'){
                return this.Members.filter(item => { return item.m_username.indexOf(text) > - 1 })
            }else if(this.selected == 'firstname'){
                return this.Members.filter(item => { return item.m_firstname.indexOf(text) > -1 })
            }else if(this.selected == 'lastname'){
                return this.Members.filter(item => { return item.m_lastname.indexOf(text) > -1 })
            }else if(this.selected == 'member_type'){
                return this.Members.filter(item => { return item.m_type.indexOf(text) > -1 })
            }else if(this.selected == 'firstname ENG'){
                return this.Members.filter(item => { return item.m_firstname_eng.indexOf(text) > -1 })
            }else if(this.selected == 'lastname ENG'){
                return this.Members.filter(item => { return item.m_lastname_eng.indexOf(text) > -1 })
            }else if(this.selected == ''){
                return this.Members.filter(item => { 
                    return item.m_username.indexOf(text) > - 1 
                    || item.m_firstname.indexOf(text) > - 1 
                    || item.m_lastname.indexOf(text) > -1 
                    || item.m_firstname_eng.indexOf(text) > -1 
                    || item.m_lastname_eng.indexOf(text) > -1 
                    // || item.m_type.indexOf(text) > - 1 
                })
            }
        }
    },
    created(){
        this.$store.dispatch("initMembers")
        this.$store.dispatch("initDataMember_Type")
    }
}
</script>
