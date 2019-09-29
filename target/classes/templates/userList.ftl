<#import "parts/common.ftl" as C>
<@C.page>
List of users
<table>
    <thread>
        <th>Name</th>
        <th>Role</th>
        <th></th>
    </thread>
    <tbody>
<#list users as user>
    <tr>
        <td>${user.username}</td>
        <td>
            <#list user.roles as role>${role}<#sep>, </#list>
        </td>
        <td><a href="/user/${user.id}">edit</a> </td>
    </tr>
</#list>
    </tbody>
</table>
</@C.page>