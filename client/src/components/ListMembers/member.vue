<template>
    <tr>   
        <td>{{member.m_id}}</td>
        <td>{{member.m_firstname}}</td>
        <td>{{member.m_lastname}}</td>
        <td>{{member.m_email}}</td>
        <td>{{member.m_phone}}</td>
        <td>{{member.m_status}}</td>
        <td>{{member.m_username}}</td>
        <td>{{member.m_password}}</td>    
        <td>
            <router-link :to = "{ name : 'edit-paramiter', params : { member:member}}">
                <button class="form-control btn-warning">Edit</button>
            </router-link>
        </td>
        <td>
            <button @click="$store.dispatch('deleteMember',member.m_id)" class="form-control btn-danger">Delete</button>            
        </td> 
    </tr>
</template>
<script>
export default {
    props : ["member"]
}
</script>
