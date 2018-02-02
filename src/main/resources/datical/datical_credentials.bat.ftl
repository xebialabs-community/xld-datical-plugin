<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
-->

<#assign ddb_audit_user><#if deployed.container.audit_username?has_content>@set DDB_AUDIT_USER=${deployed.container.audit_username}</#if></#assign>
<#assign ddb_audit_pass><#if deployed.container.audit_password?has_content>@set DDB_AUDIT_PASS=${deployed.container.audit_password}</#if></#assign>
<#assign ddb_user><#if deployed.container.username?has_content>@set DDB_USER=${deployed.container.username}</#if></#assign>
<#assign ddb_pass><#if deployed.container.password?has_content>@set DDB_PASS=${deployed.container.password}</#if></#assign>
