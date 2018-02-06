<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-->
<#assign environment><#if deployed.container.envName?has_content>${deployed.container.envName}<#else>${deployed.envName}</#if></#assign>

<#assign login_simple>${deployed.container.home} </#assign>

<#assign labels><#if deployed.labels?has_content>--labels="${deployed.labels}"</#if></#assign>

<#assign reports><#if deployed.reportsLocation?has_content>--report="${deployed.reportsLocation}"</#if></#assign>

<#assign pipeline><#if deployed.pipeline?has_content>--pipeline="${deployed.pipeline}"</#if></#assign>

<#assign curl><#if deployed.curl_path?has_content>"${deployed.curl_path} --insecure --request POST https://${deployed.daticalweb_host}/service/reporting/qa/v1/audit-db/sync"</#if></#assign>
