<#--

    Copyright 2022 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-->
<#if previousDeployed.container.auditUsername?has_content>@set DDB_AUDIT_USER=${previousDeployed.container.auditUsername}</#if>
<#if previousDeployed.container.auditPassword?has_content>@set DDB_AUDIT_PASS=${previousDeployed.container.auditPassword}</#if>
<#if previousDeployed.container.username?has_content>@set DDB_USER=${previousDeployed.container.username}</#if>
<#if previousDeployed.container.password?has_content>@set DDB_PASS=${previousDeployed.container.password}</#if>
<#if previousDeployed.container.daticalServiceUserName?has_content>@set DATICAL_USERNAME=${previousDeployed.container.daticalServiceUserName}</#if>
<#if previousDeployed.container.daticalServicePassword?has_content>@set DATICAL_PASSWORD=${previousDeployed.container.daticalServicePassword}</#if>
<#if previousDeployed.container.daticalservice_server?has_content>@set DATICAL_SERVER=${previousDeployed.container.daticalservice_server}</#if>
<#if previousDeployed.container.daticalServiceClientSecret?has_content>@set DATICAL_CLIENT_SECRET=${previousDeployed.container.daticalServiceClientSecret}</#if>
<#if previousDeployed.container.daticalServiceInstantClientHome?has_content>@set daticalServiceInstantClientHome=${previousDeployed.container.daticalServiceInstantClientHome}</#if>
