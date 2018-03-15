<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#assign hammerweb><#if isdaticalservice=="true">${deployed.container.home} --daticalServer=${deployed.container.daticalservice_server} --daticalUsername=${deployed.container.daticalServiceUserName}</#if></#assign>
<#assign isdaticalservice>${(deployed.container.daticalServiceHost)?has_content}</#assign>
<#assign isdaticalservice><#if deployed.container.daticalServiceHost?has_content>"true"<#else>"false"</#if></#assign>
-->

<#assign environment><#if deployed.container.envName?has_content>${deployed.container.envName}<#else>${deployed.envName}</#if></#assign>

<#assign hammer>${deployed.container.home}</#assign>

<#assign daticalServiceProjectStatus><#if deployed.container.daticalServiceProject?has_content>${deployed.container.daticalServiceProject}</#if></#assign>
<#assign daticalServiceHost><#if deployed.container.daticalServiceHost?has_content>--daticalServer=${deployed.container.daticalServiceHost}</#if></#assign>
<#assign daticalServiceUserName><#if deployed.container.daticalServiceUserName?has_content>--daticalUsername=${deployed.container.daticalServiceUserName}</#if></#assign>

<#assign daticalServiceProject><#if deployed.daticalServiceProject?has_content>--projectKey=${deployed.daticalServiceProject}</#if></#assign>
<#assign daticalServiceProjectStatus><#if deployed.daticalServiceProject?has_content>${deployed.daticalServiceProject}</#if></#assign>
<#assign labels><#if deployed.labels?has_content>--labels="${deployed.labels}"</#if></#assign>
<#assign reports><#if deployed.reportsLocation?has_content>--report="${deployed.reportsLocation}"</#if></#assign>
<#assign pipeline><#if deployed.pipeline?has_content>--pipeline="${deployed.pipeline}"</#if></#assign>
