<#import "parts/common.ftlh" as shablon>
<#import "parts/login.ftlh" as login>

<@shablon.page>
    Add new user
    ${message!}
    <@login.login "/registration" />
</@shablon.page>