<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-->
<#include "/datical/datical_generic.ftl">
<#include "/datical/datical_credentials.bat.ftl">
${ddb_audit_user}
${ddb_audit_pass}
${ddb_user}
${ddb_pass}
<#--
echo DDB_USER=%DDB_USER%
echo DDB_PASS=%DDB_PASS%
echo DDB_AUDIT_USER=%DDB_AUDIT_USER%
echo DDB_AUDIT_PASS=%DDB_AUDIT_PASS%
-->
<#--
${login} -p ${deployed.targetPath} status ${environment}
-->
${login_simple} -p ${deployed.targetPath} status ${environment}
${curl}
