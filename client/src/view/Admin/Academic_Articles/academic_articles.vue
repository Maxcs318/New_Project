<template>
    <div class="container">
        <h4 class=" ">บทความวิชาการ</h4> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="add_academicarticle">Add Academic Article</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:35%">Academic Article Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(article,index) in the_academic_article.slice().reverse()" :key="index" >
                        <td>{{article.aa_id}}</td>
                        <td>{{article.aa_title.slice(0,35)}}</td>
                        <td>{{article.aa_create_date}}</td>
                        <td>{{article.aa_update_date}}</td>
                        <td> <button class="form-control btn-warning" @click="editArticle(article.aa_id)">Edit</button> </td>
                        <td> <button class="form-control btn-danger"  @click="deleteArticle(article.aa_id)">Delete</button> </td>
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
        add_academicarticle(){
            this.$router.push('/add_academicarticle')
        },
        editArticle(this_academicarticle){
            this.$router.push({name:'editacademicarticle',params:{AcademicArticleID:this_academicarticle}});
        },
        deleteArticle(this_academicarticle){
            // console.log(this_academicarticle)
            var FD  = new FormData()
            FD.append('articleID',JSON.stringify(this_academicarticle))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$swal({
                title: "Are you sure?",
                text: "You want delete this Article ID "+this_academicarticle,
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    this.$store.dispatch("Delete_Academic_Article",FD)
                    swal({title: "Delete Success.",icon: "success",});
                } else {
                    // swal("Your imaginary file is safe!");
                }
            })
        }
    },
    computed:{
        the_academic_article(){
            return this.$store.getters.getAcademic_Article
        },
        the_user(){
            return this.$store.getters.getThe_User
        }
    },
    created(){
        this.$store.dispatch("initDataAcademic_Article")
        this.$store.dispatch("initDataFiles")
    }
}
</script>
