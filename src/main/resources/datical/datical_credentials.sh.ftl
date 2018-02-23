<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
-->

<#if !(deployed.container.daticalservice_host?has_content)>
	<#if deployed.container.audit_username?has_content>export DDB_AUDIT_USER=${deployed.container.audit_username} > /dev/null</#if>
	<#if deployed.container.audit_password?has_content>export DDB_AUDIT_PASS=${deployed.container.audit_password} > /dev/null</#if>
	<#if deployed.container.username?has_content>export DDB_USER=${deployed.container.username} > /dev/null</#if>
	<#if deployed.container.password?has_content>export DDB_PASS=${deployed.container.password} > /dev/null</#if>
</#if>
	
<#if deployed.container.daticalservice_username?has_content>@set DATICAL_USERNAME=${deployed.container.daticalservice_username}</#if>
<#if deployed.container.daticalservice_password?has_content>@set DATICAL_PASSWORD=${deployed.container.daticalservice_password}</#if>
<#if deployed.container.daticalservice_server?has_content>@set DATICAL_SERVER=${deployed.container.daticalservice_server}</#if>
<#if deployed.container.daticalservice_client_secret?has_content>@set DATICAL_CLIENT_SECRET=${deployed.container.daticalservice_client_secret}</#if>
<#if deployed.container.instant_client_home?has_content>@set INSTANT_CLIENT_HOME=${deployed.container.instant_client_home}</#if>
