<template>
    <div class="container" v-if="the_user">
        <h3><center> Gama Awards ++++ Winners  </center></h3>
        <center> ประกาศรายชื่อผู้ที่ได้รับรางวัล Gama Awards </center>
        <center> ประจำปี ++++ </center> <br>
        <div class="row">
            <div class="col-lg-3 col-xs-12">
                <router-link to="/AdminC">
                    <button class="form-control btn-primary">Company</button>
                </router-link>
                <br>
            </div>
            <div class="col-lg-3 col-xs-12">
                <router-link to="/">
                    <button class="form-control btn-primary">Award Type</button>
                </router-link>            </div>
            <div class="col-lg-3 col-xs-12">
                <router-link to="/">
                    <button class="form-control btn-primary">Award Years</button>
                </router-link>            </div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="addaward">Add Award</button> <br>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-5">
                Search Name : {{search}}
                <input type="text" class="form-control" v-model="search">
            </div>
            <div class="col-lg-3">
                Award Type : {{selected}}
                <select v-model="selected" class="form-control">
                    <option selected value=''> All </option>
                    <option v-for=" at in Award_type " :value="at.at_id" >
                        {{at.at_title}}
                    </option>
                </select>   <br>
            </div>
            <div class="col-lg-2"> <br> <center v-if="search!=''">Result : {{the_award_list.length}} </center></div>    
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:35%">รายชื่อ</th>
                        <th style="width:20%">บริษัท</th>
                        <th style="width:20%">ประเภทรางวัล</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(award,index) in the_award_list.slice((page*data_in_page),(page+1)*data_in_page)" :key="index" >
                        <td>{{award.al_id }}</td>
                        <td>{{award.al_recipient}}</td>
                        <td>
                            <div v-for="company in Company" v-if="company.c_id == award.al_company_id">
                                {{company.c_title}}
                            </div>
                        </td>
                        <td>
                            <div v-for="at in Award_type" v-if="at.at_id == award.al_award_type_id">
                                {{at.at_title}}
                            </div>
                        </td>
                        <td> <button class="form-control btn-warning" @click="editAward_list(award.al_id)">Edit</button> </td>
                        <td> <button class="form-control btn-danger"  @click="deleteAward_list(award.al_id)">Delete</button> </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row" v-if="length_page > 0">
            <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                <div class="btn-group" role="group" aria-label="Second group">
                    <button type="button" class="btn btn-light" @click="seenextPage(1)" title="First page"><<</button>
                    <button
                    type="button"
                    class="btn btn-light"
                    v-for=" (run_page,index) in length_page "
                    @click="seenextPage(run_page)"
                    v-bind:class="{ active: isActive[index+1] }"
                    v-if=" run_page >= page_start && run_page <= page_end "
                    >{{run_page}}</button>
                    <button type="button" class="btn btn-light" @click="seenextPage(length_page)" title="Last page">>></button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            page: 0,
            data_in_page: 20,
            length_page: 0,
            page_start: 0,
            page_end: 0,
            isActive: [],
            userstatus:'',
            // search data
            selected:'',
            search:'',

            
        };
    },
    methods:{
        addaward(){
            this.$router.push('/addaward_list')
        },
        seenextPage(num_page) {
            this.$router.push({
                name: "AdminAw",
                params: { Page: num_page }
            });
        },
        editAward_list(thisaward){
            this.$router.push({name:'editaward_list',params:{Award_listID:thisaward}});
        },
        deleteAward_list(thisaward){
            // console.log(thisaward)
            var FD  = new FormData()
            FD.append('awardID',JSON.stringify(thisaward))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$swal({
                title: "Are you sure?",
                text: "You want delete this Award ID "+thisaward,
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    this.$store.dispatch("Delete_Award_list",FD)
                    swal({title: "Delete Success.",icon: "success",});
                    // console.log(FD)
                } else {
                    // swal("Your imaginary file is safe!");
                }
            })
        }
    },
    watch:{
        selected :function (val) {
            this.search = ''
            // back to page 1
            this.$router.push({
                name: "AdminAw",
                params: { Page: 1 }
            });
        },
        search :function (val) {
            this.$router.push({
                name: "AdminAw",
                params: { Page: 1 }
            });
        }
    },
    computed:{
        award_list_All(){
            return this.$store.getters.getAward_List
        },
        listFilter () {
            let text = this.search.trim()
            if(this.search == '' && this.selected == '' ){
                return this.award_list_All
            }else{
                if(this.selected == ''){
                    return this.award_list_All.filter(item => { return item.al_recipient.indexOf(text) > - 1 })
                }else{
                    if(this.search == ''){
                        return this.award_list_All.filter(item => { return item.al_award_type_id.indexOf(this.selected)  > -1 })
                    }else{
                        return this.award_list_All.filter(item => { return item.al_award_type_id.indexOf(this.selected)  > -1 && item.al_recipient.indexOf(text) > - 1 })
                    }
                }
            }
        },
        the_award_list(){
            var setpage = this.$route.params.Page;
            var award_list = this.listFilter
            var p_conpute = 2;
            var p_start = setpage;
            var p_end = Math.ceil(setpage / 1 + p_conpute);

            this.page = setpage - 1;
            this.length_page = Math.ceil(award_list.length / this.data_in_page); // set page all
            // set start && end paging
            if (setpage > p_conpute) {
                p_start = setpage - p_conpute;
            } else {
                p_start = -(setpage - p_conpute) - p_conpute;
                p_end = p_end + p_start + p_conpute + 1;
            }
            if (p_end >= this.length_page) {
                p_start = p_start + (this.length_page - setpage - p_conpute);
            }
            this.page_start = p_start;
            this.page_end = p_end;

            this.isActive = [];
            for (var i = 0; i <= this.length_page; i++) {
                if (i == this.$route.params.Page) {
                this.isActive.push(true);
                } else {
                this.isActive.push(false);
                }
            }
            return award_list
        },
        the_user(){
            var user = this.$store.getters.getThe_User
            // if( user.m_status != 'admin' ){
                // this.$router.go(-1)
            // }
            this.userstatus = user.m_status
            return user
        },
        Award_type(){
            return this.$store.getters.getAward_Type
        },
        Company(){
            return this.$store.getters.getCompany
        },
    },
    created(){
        this.$store.dispatch("initDataAward_List")
        this.$store.dispatch("initDataAward_Type")
        this.$store.dispatch("initDataAward_years")
        this.$store.dispatch("initDataCompany")
    }
}
</script>
