<#import "parts/common.ftlh" as shablon>
<#import "parts/login.ftlh" as login>

<@shablon.page>
<@login.login "/login"/>
    <a href="/registration">Add new user</a>
</@shablon.page>


