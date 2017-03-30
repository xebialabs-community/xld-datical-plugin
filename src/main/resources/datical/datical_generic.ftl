<#assign login>${deployed.container.home} <#if deployed.container.username?has_content>-un ${deployed.envName}:::${deployed.container.username} -pw ${deployed.envName}:::${deployed.container.password}</#if></#assign>

<#assign labels><#if deployed.labels?has_content>--labels="${deployed.labels}"</#if></#assign>

<#assign reports><#if deployed.reportsLocation?has_content>--report="${deployed.reportsLocation}"</#if></#assign>
