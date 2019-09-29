<#import "parts/common.ftl" as C>
<#import "parts/loogin.ftl" as l>
<@C.page>
    ${message?ifExists}
    <@l.login "/login" false/>
</@C.page>