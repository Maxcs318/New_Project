<template>
    <div class="container">
        <h4 class="mt-3">บทความต่างๆ</h4> <br>
        <div class="row">
            <div class="col-lg-9 col-xs-12"></div>
            <div class="col-lg-3 col-xs-12">
                <button class="form-control btn-primary" @click="addarticle">Add Article</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <table style="width:100%" >
                    <tr style="width:100%">
                        <th style="width:5%">ID</th>
                        <th style="width:35%">Article Title</th>
                        <th style="width:20%">Create Date</th>
                        <th style="width:20%">Update Date</th>
                        <th style="width:10%">  </th>
                        <th style="width:10%">  </th>
                    </tr>
                    <tr v-for="(article,index) in the_article.slice().reverse()" :key="index" >
                        <td>{{article.a_id}}</td>
                        <td>{{article.a_title.slice(0,35)}}</td>
                        <td>{{article.a_create_date}}</td>
                        <td>{{article.a_update_date}}</td>
                        <td> <button class="form-control btn-warning" @click="editArticle(article.a_id)">Edit</button> </td>
                        <td> <button class="form-control btn-danger"  @click="deleteArticle(article.a_id)">Delete</button> </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods:{
        addarticle(){
            this.$router.push('/addarticle')
        },
        editArticle(thisarticle){
            this.$router.push({name:'editarticle',params:{ArticleID:thisarticle}});
        },
        deleteArticle(thisarticle){
            // console.log(thisarticle)
            var FD  = new FormData()
            FD.append('articleID',JSON.stringify(thisarticle))
            FD.append('creator',JSON.stringify(this.$store.state.log_on))
            this.$swal({
                title: "Are you sure?",
                text: "You want delete this Article ID "+thisarticle,
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
            .then((willDelete) => {
                if (willDelete) {
                    this.$store.dispatch("Delete_Article",FD)
                    swal({title: "Delete Success.",icon: "success",});
                    // console.log(FD)
                } else {
                    // swal("Your imaginary file is safe!");
                }
            })
        }
    },
    computed:{
        the_article(){
            return this.$store.getters.getArticle
        },
        the_user(){
            return this.$store.getters.getThe_User
        }
    },
    created(){
        this.$store.dispatch("initDataArticle")
        this.$store.dispatch("initDataFiles")
    }
}
</script>
