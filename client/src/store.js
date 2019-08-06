import Vue from "vue"
import Vuex from "vuex"
import axios from "axios"

Vue.use(Vuex)

const store = new Vuex.Store({
    state : {
        the_user:'',
        log_on: localStorage.getItem('The_User') || null,
    },
    mutations : {
        initMembers(state,user){
            state.log_on = user
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
        }

    },
    actions : {
        initApp(context){
            if(this.state.log_on !== null){
                var user = { token : this.state.log_on}
                // console.log(user)
                axios.post("http://zproject.vue.com/api/loadLogin", JSON.stringify(user))
                .then(response => {
                    // console.log(response)
                    context.commit("Log_On",response.data)
                })
            }else{
                this.state.the_user=''
            }
        },
        // login
        Logining_in(context,user){
            // console.log(user)            
            axios.post("http://zproject.vue.com/api/checkLogin", JSON.stringify(user))
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
            axios.post("http://zproject.vue.com/api/log_out", JSON.stringify(user_logout))
            .then(response => {
                localStorage.removeItem('The_User')
                context.commit("Log_Out")
                // console.log(response)
            })
        },
        Register(context,newuser){
            axios.post("http://zproject.vue.com/api/save", JSON.stringify(newuser))
            .then(response => {
                // console.log(response)
            })
        }
        
    },
    getters : {
        // getMembers(state){
        //     return state.members
        // },
    }

})

export default store