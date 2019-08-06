import Vue from "vue"
import Vuex from "vuex"
import axios from "axios"

Vue.use(Vuex)

const store = new Vuex.Store({
    state : {
        members : [],
        the_user:'',
        log_on: localStorage.getItem('The_User') || null,
    },
    mutations : {
        initMembers(state,members){
            state.members = members
        },
        Logining_in(state,now_user){
            state.log_on = now_user
        },
        Log_Out(state){
            state.log_on = null
            state.the_user = ''
        },
        Log_On(state,user){
            state.the_user = user
        },
        updateMember(state,member){
            let index = state.members.findIndex(m => m.m_id == member.m_id)
            if(index > -1){
                state.members[index] = member
            }
        },
        deleteMember(state,memberID){
            let index = state.members.findIndex(m => m.m_id == memberID)
            if(index > -1){
                state.members.splice(index,1)
            }
        },

    },
    actions : {
        initApp(context){
            if(this.state.log_on !== null){
                var user = { token : this.state.log_on}
                // console.log(user)
                axios.post("http://gamaproject.vue.com/api/loadLogin", JSON.stringify(user))
                .then(response => {
                    // console.log(response)
                    context.commit("Log_On",response.data)
                })
                axios.get("http://gamaproject.vue.com/api/get_all_data")
                .then(response => {
                    console.log(response.data)
                    context.commit("initMembers",response.data)
            })
            }else{
                this.state.the_user=''
            }
        },
        // login
        Logining_in(context,user){
            // console.log(user)            
            axios.post("http://gamaproject.vue.com/api/checkLogin", JSON.stringify(user))
            .then(response => {
                // console.log(response)
                    if(response.data != '' && response.data != null){
                        var the_token = response.data.token_logged
                            localStorage.setItem('The_User',the_token)
                            context.commit("Logining_in",the_token)
                            context.commit("Log_On",response.data)
                    }
            })
        },
        Log_Out(context){
            var user_logout = { token : this.state.log_on}
            axios.post("http://gamaproject.vue.com/api/log_out", JSON.stringify(user_logout))
            .then(response => {
                localStorage.removeItem('The_User')
                context.commit("Log_Out")
                // console.log(response)
            })
        },
        Register(context,newuser){
            axios.post("http://gamaproject.vue.com/api/save", JSON.stringify(newuser))
            .then(response => {
                // console.log(response)
            })
        },
        updateMember(context,member){
            // console.log(member)
            return axios.post("http://gamaproject.vue.com/api/update", JSON.stringify(member))
            .then(response => {
                context.commit("updateMember",member)
            })
        },
        deleteMember(context,memberID){
            return axios.post("http://gamaproject.vue.com/api/delete", JSON.stringify({m_id : memberID}))
            .then(response => {
                context.commit("deleteMember",memberID)
            })
            // console.log(memberID)
        },
        
    },
    getters : {
        getMembers(state){
            return state.members
        },
        
    }

})

export default store