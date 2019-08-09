import Vue from "vue"
import Vuex from "vuex"
import axios from "axios"

Vue.use(Vuex)

const store = new Vuex.Store({
    state : {
        statusPage:'',
        news:[],
        members : [],
        the_user:'',
        log_on: localStorage.getItem('The_User') || null,
    },
    mutations : {
        initMembers(state,members){
            state.members = members
        },
        NewsAll(state,news){
            state.news = news
        },
        LoadingPage(state,statusP){
            state.statusPage = statusP
        },
        Logining_in(state,now_user){
            state.log_on = now_user
        },
        Log_Out(state){
            state.log_on = null
            state.the_user = ''
            state.members = ''
        },
        Log_On(state,user){
            state.the_user = user
        },
        addMember(state,member){
            state.members.push(member)
        },
        Add_News(state,Newnews){
            state.news.pop(Newnews)
        },

    },
    actions : {
        initApp(context){
            // check login
            if(this.state.log_on !== null){
                var user = { token : this.state.log_on}
                // console.log(user)
                axios.post("http://gamaproject.vue.com/api/loadLogin", JSON.stringify(user))
                .then(response => {
                    // console.log(response)
                    context.commit("Log_On",response.data)
                })
            }else{
                this.state.the_user=''
            }
        },
        initNews(context){
            axios.get("http://gamaproject.vue.com/news/get_all_news")
                .then(response => {
                    // console.log(response)
                    context.commit("NewsAll",response.data)
            })
        },
        // load page
        LoadingPage(context,statusPage){
            context.commit('LoadingPage',statusPage)
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
                // console.log(newuser)
                context.commit("addMember",{ m_id : response.data.insert_id, ...newuser})
            })
        },
        //add news
        Add_News(context,news){
            axios.post('http://gamaproject.vue.com/news/insert_news',news)
            .then(response =>{
                // console.log('Response Data',response.data)
                context.commit("Add_News",response.data)
            })
        },
        
        
    },
    getters : {
        getMembers(state){
            return state.members
        },
        getNews(state){
            return state.news
        }
    }

})

export default store