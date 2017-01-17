<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

<#if previousDeployed.changeids?size gt 0>
    <#list previousDeployed.changeids as changeid>
        ${previousDeployed.container.home} -p ${previousDeployed.targetPath} rollback ${previousDeployed.envName} changeid:id=${changeid}
    </#list>
<#else>
    ${previousDeployed.container.home} -p ${previousDeployed.targetPath} rollback ${previousDeployed.envName} lastdeploy
</#if>