<?xml version="1.0"?>
<globals>
    <#assign useSupport=(minApiLevel lt 23)>
    <global id="useSupport" type="boolean" value="${useSupport?string}" />
    <global id="SupportPackage" value="${useSupport?string('.support.v4','')}" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="uiSrcOut" value="${srcOut}/ui" />
    <global id="uiPath" value="${packageName}.ui" />
    <global id="diSrcOut" value="${srcOut}/di" />
    <global id="viewModelSrcOut" value="${srcOut}/viewmodel" />
    <global id="viewModelPath" value="${packageName}.viewmodel" />
    <global id="relativePackage" value="<#if relativePackage?has_content>${relativePackage}<#else>${packageName}</#if>" />
</globals>
