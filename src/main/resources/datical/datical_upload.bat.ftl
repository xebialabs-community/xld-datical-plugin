<#--

    Copyright 2018 XEBIALABS

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-->
<#if !deployed.container.zipLocation?has_content>
    mkdir C:\\Temp\\7zip
    7zip\7z1604-x64.exe /S /D=C:\\Temp\\7zip
    <#assign ziploc="C:\\Temp\\7zip\\7z.exe"/>
<#else>
    <#assign ziploc=deployed.container.zipLocation/>
</#if>

rmdir /S /Q ${deployed.targetPath}
${ziploc} x ${deployed.file.path} -aoa -o${deployed.targetPath}
<#if !deployed.container.zipLocation?has_content>
    rmdir /s /q C:\Temp\7zip
</#if>

<#if (deployedApplication.environment.name)?has_content>
	echo deployedApplication.environment.name=${deployedApplication.environment.name}
<#else>
	echo No information available for deployedApplication.environment.name
</#if>

<#if (deployedApplication.version)?has_content>
	echo deployedApplication.version=${deployedApplication.version}
<#else>
	echo No information available for deployedApplication.version
</#if>

<#if (deployedApplication.getVersion().getVersion())?has_content>
	echo deployedApplication.getVersion()=${deployedApplication.getVersion().getVersion()}
<#else>
	echo No information available for deployedApplication.getVersion().getVersion()
</#if>

<#if (deployedApplication.getVersion())?has_content>
	echo deployedApplication.getVersion()=${deployedApplication.getVersion()}
<#else>
	echo No information available for deployedApplication.getVersion()
</#if>

<#if (deployedApplication.version.version)?has_content>
	echo deployedApplication.version.version=${deployedApplication.version.version}
<#else>
	echo No information available for deployedApplication.version.version
</#if>

<#if (deployedApplication.version.application.name)?has_content>
	echo deployedApplication.version.application.name=${deployedApplication.version.application.name}
<#else>
	echo No information available for deployedApplication.version.application.name
</#if>

<#if (previousDeployedApplication.version.name)?has_content>
	echo previousDeployedApplication.version.name=${previousDeployedApplication.version.name}
<#else>
	echo No information available for previousDeployedApplication.version.name
</#if>
