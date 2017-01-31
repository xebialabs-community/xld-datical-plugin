<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->
<#if !deployed.container.zipLocation?has_content>
    mkdir C:\\Temp\\7zip
    7zip\7z1604-x64.exe /S /D=C:\\Temp\\7zip
    <#assign ziploc="C:\Temp\7zip\7z.exe"/>
<#else>
    <#assign ziploc=deployed.container.zipLocation/>
</#if>

${ziploc} x ${deployed.file.path} -o${deployed.targetPath}
<#if !deployed.container.zipLocation?has_content>
    rmdir /s /q C:\Temp\7zip
</#if>
