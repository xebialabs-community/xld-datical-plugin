<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#assign hammerweb><#if isdaticalservice=="true">${deployed.container.home} --daticalServer=${deployed.container.daticalservice_server} --daticalUsername=${deployed.container.daticalservice_username}</#if></#assign>
<#assign isdaticalservice>${(deployed.container.daticalservice_host)?has_content}</#assign>
<#assign isdaticalservice><#if deployed.container.daticalservice_host?has_content>"true"<#else>"false"</#if></#assign>
-->

<#assign environment><#if deployed.container.envName?has_content>${deployed.container.envName}<#else>${deployed.envName}</#if></#assign>

<#assign hammer>${deployed.container.home}</#assign>

<#assign daticalservice_projectStatus><#if deployed.container.daticalservice_project?has_content>${deployed.container.daticalservice_project}</#if></#assign>
<#assign daticalservice_host><#if deployed.container.daticalservice_host?has_content>--daticalServer=${deployed.container.daticalservice_host}</#if></#assign>
<#assign daticalservice_username><#if deployed.container.daticalservice_username?has_content>--daticalUsername=${deployed.container.daticalservice_username}</#if></#assign>
<#assign daticalservice_password><#if deployed.container.daticalservice_password?has_content>--daticalUsername=${deployed.container.daticalservice_password}</#if></#assign>

<#assign daticalservice_project><#if deployed.daticalservice_project?has_content>--projectKey=${deployed.daticalservice_project}</#if></#assign>
<#assign daticalservice_projectStatus><#if deployed.daticalservice_project?has_content>${deployed.daticalservice_project}</#if></#assign>
<#assign labels><#if deployed.labels?has_content>--labels="${deployed.labels}"</#if></#assign>
<#assign reports><#if deployed.reportsLocation?has_content>--report="${deployed.reportsLocation}"</#if></#assign>
<#assign pipeline><#if deployed.pipeline?has_content>--pipeline="${deployed.pipeline}"</#if></#assign>
