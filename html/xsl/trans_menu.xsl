<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

     <xsl:template match="/sommaire">

<!--         <div id="menu"> -->
             <ul id="menu">
                 <xsl:for-each select="bouton">
                     <xsl:choose>

                    <!-- Dans le cas des dix commandements où il nous faudra dix puces -->
                     <xsl:when test="@lot = 'commandement' ">
                     <li>
                         <xsl:element name="a">
                         <xsl:attribute name="href">
                         <xsl:value-of select="lien"/>
                         </xsl:attribute>
                         <xsl:value-of select="titre"/>
                         </xsl:element>
                            <ul>
                                <xsl:for-each select="sousbouton">
                                    <li>
                                        <xsl:element name="a">
                                        <xsl:attribute name="href">
                                        <xsl:value-of select="lien"/>
                                        </xsl:attribute>
                                        <xsl:value-of select="titre"/>
                                        </xsl:element>
                                    </li>
                                </xsl:for-each>
                            </ul>
                     </li>
                     </xsl:when>

                     <!-- Dans le cas du sermont de la montagne où il nous faudra onze puces -->
                      <xsl:when test="@lot = 'montagne' ">
                      <li>
                          <xsl:element name="a">
                          <xsl:attribute name="href">
                          <xsl:value-of select="lien"/>
                          </xsl:attribute>
                          <xsl:value-of select="titre"/>
                          </xsl:element>
                             <ul>
                                 <xsl:for-each select="sousbouton">
                                     <li>
                                         <xsl:element name="a">
                                         <xsl:attribute name="href">
                                         <xsl:value-of select="lien"/>
                                         </xsl:attribute>
                                         <xsl:value-of select="titre"/>
                                         </xsl:element>
                                     </li>
                                 </xsl:for-each>
                             </ul>
                      </li>
                      </xsl:when>

                      <!-- Dans les autres cas, il n'y a rien de spécial à faire -->
                      <xsl:otherwise>
                        <li>
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                            <xsl:value-of select="lien"/>
                            </xsl:attribute>
                                <xsl:value-of select="titre"/>
                        </xsl:element>
                        </li>
                    </xsl:otherwise>


                       </xsl:choose>
                </xsl:for-each>
            </ul>
<!--        </div> -->

    </xsl:template>
</xsl:stylesheet>
