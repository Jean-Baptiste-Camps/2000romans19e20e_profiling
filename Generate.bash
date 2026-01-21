for i in *.xml; do saxonb-xslt -xsl:../xsl/parGenre.xsl -s:$i -o:toto -ext:on ; done
for i in *.xml; do saxonb-xslt -xsl:../xsl/parGeneration.xsl -s:$i -o:toto -ext:on ; done
#fixme : some generations have errors due to missing TEI code
