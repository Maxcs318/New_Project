<template>
    <div class="row">
        <div class="col-lg-12 mt-2" v-if="members.length >0">
        <table style="width : 100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Firstname</th>
                    <th>Lastname</th>
                    <th>E-mail</th>
                    <th>Phone</th>
                    <th>Status</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <member v-for="member in members" :key="member.m_id" :member="member"></member>
            </tbody>
        </table>
        </div>
        <div class="col-lg-12 mt-2" v-else >
            <center><h3>No Data</h3></center>
        </div>
    </div>
</template>
<script>
import member from "./member"
export default {
    components : {
        member
    },
    computed : {
        members(){
            return this.$store.getters.getMembers
        }
    }
}
</script>

