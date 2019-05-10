<#--

    Copyright 2019 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
-->

<#if !(deployed.container.daticalServiceHost?has_content)>
	<#if deployed.container.auditUsername?has_content>export DDB_AUDIT_USER=${deployed.container.auditUsername} > /dev/null</#if>
	<#if deployed.container.auditPassword?has_content>export DDB_AUDIT_PASS=${deployed.container.auditPassword} > /dev/null</#if>
	<#if deployed.container.username?has_content>export DDB_USER=${deployed.container.username} > /dev/null</#if>
	<#if deployed.container.password?has_content>export DDB_PASS=${deployed.container.password} > /dev/null</#if>
</#if>
	
<#if deployed.container.daticalServiceUserName?has_content>export DATICAL_USERNAME=${deployed.container.daticalServiceUserName}</#if>
<#if deployed.container.daticalServicePassword?has_content>export DATICAL_PASSWORD=${deployed.container.daticalServicePassword}</#if>
<#if deployed.container.daticalservice_server?has_content>export DATICAL_SERVER=${deployed.container.daticalservice_server}</#if>
<#if deployed.container.daticalServiceClientSecret?has_content>export DATICAL_CLIENT_SECRET=${deployed.container.daticalServiceClientSecret}</#if>
<#if deployed.container.daticalServiceInstantClientHome?has_content>export daticalServiceInstantClientHome=${deployed.container.daticalServiceInstantClientHome}</#if>
