<#import "parts/common.ftl" as C>
<#import "parts/loogin.ftl" as l>
<@C.page>
    <div class="mb-1">Add new user</div>
${message?ifExists}
<@l.login "/registration" true/>
</@C.page>