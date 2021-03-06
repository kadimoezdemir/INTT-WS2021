<?xml version="1.0" encoding="UTF-8"?>

<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <fo:layout-master-set>
            <fo:simple-page-master master-name="Preisliste" 
                                    page-height="297mm" 
                                    page-width="21cm" 
                                    margin-left="2.5cm" 
                                    margin-right="20mm" 
                                    margin-top="20mm" 
                                    margin-bottom="20mm">
            <fo:region-body 
                        margin-top="2cm" 
                        margin-bottom="2cm"/>
            <fo:region-before extent="2cm"/>
            <fo:region-after extent="2cm"/>
        </fo:simple-page-master>
    </fo:layout-master-set>

    <fo:page-sequence master-reference="Preisliste">
        <fo:flow flow-name="xsl-region-body">
            <fo:block font-size="18px" text-align="center" space-before="0.5cm" space-after="0.5cm">
                Allgold Produktpreise
            </fo:block>

            <fo:block>
                <fo:table background-color="#B8DB7D" border-style="solid" border-width="1px" border-color="green">
                    <fo:table-header color="green" border-style="dotted" border-width="1px" border-color="green">
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block> Produkt ID </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block> Bezeichnung </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block> Preis </fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block> Haltbarkeit </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-header>

                    <fo:table-footer font-size="8px" color="green" border-style="dotted" border-width="1px" border-color="green">
                        <fo:table-row>
                            <fo:table-cell number-columns-spanned="4">
                                <fo:block> © 2020 Allgold GmbH </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-footer>

                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block>1</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>Milch</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>1.00</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>14</fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>

                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block>2</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>Emmentaler</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>3.95</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>60</fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                    
                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block>3</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>Gauda</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>3.10</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>60</fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                    
                    <fo:table-body>
                        <fo:table-row> 
                            <fo:table-cell>
                                <fo:block>4</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>Joghurt 100g</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>0.50</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>7</fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                    
                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block>5</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>Quark</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>0.90</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>10</fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                    
                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block>6</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>Joghurt 500g</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>2.00</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>7</fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                    
                    <fo:table-body>
                        <fo:table-row> 
                            <fo:table-cell>
                                <fo:block>7</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>Streichkaese</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>1.50</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>21</fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                    
                    <fo:table-body>
                        <fo:table-row>
                            <fo:table-cell>
                                <fo:block>8</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>Bergkaese</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>5.00</fo:block>
                            </fo:table-cell>
                            <fo:table-cell>
                                <fo:block>60</fo:block> 
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-body>
                    
                </fo:table>
            </fo:block>
    
        </fo:flow>
    </fo:page-sequence>
    
</fo:root>