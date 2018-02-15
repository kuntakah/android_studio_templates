<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <!-- テンプレートのlayout.xmlをコピーして開く -->
    <instantiate from="root/res/layout/fragment_blank.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentLayoutName)}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentLayoutName)}.xml" />

    <!-- Fragmentをコピーして開く -->
    <instantiate from="root/src/app_package/BlankFragment.java.ftl"
                   to="${escapeXmlAttribute(uiSrcOut)}/${fragmentName}.java" />
    <open file="${escapeXmlAttribute(uiSrcOut)}/${fragmentName}.java" />

    <!-- ViewModelをコピーして開く -->
    <instantiate from="root/src/app_package/BlankViewModel.java.ftl"
                   to="${escapeXmlAttribute(viewModelSrcOut)}/${viewModelName}.java" />
    <open file="${escapeXmlAttribute(viewModelSrcOut)}/${viewModelName}.java" />

</recipe>
