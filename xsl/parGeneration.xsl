<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xpath-default-namespace=""
    version="2.0">
    
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        
        <xsl:variable name="outFile">
            <xsl:text>./generation/</xsl:text>
            <xsl:value-of select="translate(substring(/TEI/teiHeader/fileDesc/titleStmt/author/@from, 0, 4), '?', 'X')"/>
            <xsl:text>X_</xsl:text>
            <xsl:value-of select="tokenize(/TEI/teiHeader/fileDesc/titleStmt/author/@name, '[\p{P}\s]+')[1]"/>
            <xsl:text>_</xsl:text>
            <xsl:value-of select="tokenize(/TEI/teiHeader/fileDesc/titleStmt/author/@name, '[\p{P}\s]+')[1]"/>
            <xsl:text>-</xsl:text>
            <xsl:value-of select="replace(/TEI/teiHeader/fileDesc/titleStmt/title, '[\p{P}\s]', '-')"/>
            <xsl:text>.txt</xsl:text>
        </xsl:variable>
        
        <xsl:result-document 
            href="{$outFile}">
            
            <xsl:apply-templates select="TEI/text/body"/>
            
        </xsl:result-document>
        
    </xsl:template>
    
    
</xsl:stylesheet>
