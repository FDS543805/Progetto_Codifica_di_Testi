<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/tei:teiCorpus"> 
        <html>
            <head>
                <link href="css.css" rel="stylesheet" type="text/css"/>
                <title>Progetto cartoline per Codifica di Testi</title>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <!-- IMMAGINI -->

   <xsl:template
      match="tei:surface[@xml:id='imgFronte1']/tei:graphic">
      <img id="imgFronte1" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template
      match="tei:surface[@xml:id='imgRetro1']/tei:graphic">
      <img id="imgRetro1" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template
      match="tei:surface[@xml:id='imgFronte2']/tei:graphic">
      <img id="imgFronte2" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template
      match="tei:surface[@xml:id='imgRetro2']/tei:graphic">
      <img id="imgRetro2" src="{@url}"/>
      <xsl:apply-templates/>
   </xsl:template>
  
  <!-- ELEMENTI DA NASCONDERE -->

   <xsl:template match="tei:availability">
      <div class="hyde">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template
      match="tei:addrLine[@xml:id='addrUni']">
      <div class="hyde">
         <xsl:apply-templates/>
      </div>
      <br/>
   </xsl:template>

   <xsl:template
      match="tei:publicationStmt[@xml:id='pub1' or @xml:id='pub2']">
      <div class="hyde">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template
      match="tei:titleStmt[@xml:id='titleStmt1' or @xml:id='titleStmt2']">
      <div class="hyde">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template
      match="tei:editionStmt[@xml:id='editionStmt1' or @xml:id='editionStmt2']">
      <div class="hyde">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template
      match="tei:notesStmt[@xml:id='notesStmt1' or @xml:id='notesStmt2']">
      <div class="hyde">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template
      match="tei:msIdentifier[@xml:id='msIdentifier1' or @xml:id='msIdentifier2']">
      <div class="hyde">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template
      match="tei:stamp">
      <div class="hyde">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

    <xsl:template match="tei:objectType">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>

    <xsl:template match="tei:sex">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:district">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>

    <xsl:template match="tei:country[@key='N']">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:settlement[@type='località']">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:correspAction">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:textClass">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:langUsage">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:div[@type='details']">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:corr">
      <div class="hyde">
      <xsl:apply-templates/>
      </div>
   </xsl:template>
   

   <!-- MODIFICHE AGLI ELEMENTI -->

    <xsl:template match="tei:respStmt">
         <xsl:apply-templates/>
      <br/>
   </xsl:template>
   

   <xsl:template match="tei:resp">
      <b>
         <xsl:apply-templates/>
         <xsl:text>:</xsl:text>
      </b>
   </xsl:template>

   <xsl:template match="tei:edition">
         <xsl:apply-templates/>
      <br/>
   </xsl:template>

   <xsl:template match="tei:distributor">
      <b>
         <xsl:apply-templates/>
      </b>
   </xsl:template>

    <xsl:template match="tei:publisher">
      <b>
         <xsl:text>Ente di pubblicazione: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <xsl:text> -</xsl:text>
   </xsl:template>

      <xsl:template match="tei:textLang">
      <b>
         <xsl:text>Lingua: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>

   <xsl:template match="tei:repository">
      <b>
         <xsl:text>Luogo: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>   

   <xsl:template match="tei:editionStmt">
      <b>
         <xsl:text>Edizione del progetto:</xsl:text>
      </b>  
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="tei:date[@when='2019']"> 
      <xsl:apply-templates/>
      <br/>
   </xsl:template>

   <xsl:template match="tei:lb">
      <br/>
   </xsl:template>

   <xsl:template match="tei:country">
      <b>
         <xsl:text>Paese:</xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>

  <xsl:template match="tei:summary">
      <br/>
      <b>
         <xsl:text>Genere: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>

   <xsl:template match="tei:listPerson">
      <b>
         <xsl:text>Persone citate:</xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>

   <xsl:template match="tei:person">
      <li>
         <xsl:apply-templates/>
      </li>
   </xsl:template>

    <xsl:template match="tei:listPlace">
      <b>
         <xsl:text>Luoghi citati:</xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>

   <xsl:template match="tei:place">
      <li>
         <xsl:apply-templates/>
      </li>
   </xsl:template>

    <xsl:template match="tei:figDesc">
      <p class="figDesc">
         <xsl:apply-templates/>
      </p>
   </xsl:template>

   <xsl:template match="tei:title">
      <p class="title">
         <xsl:apply-templates/>
      </p>
   </xsl:template>
   
   <xsl:template match="tei:div[@xml:id='stampa1']">
     <div id="garibaldi">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:div[@xml:id='stampa2']">
     <div id="tuffo">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:div[@xml:id='messaggio2']">
     <div id="text2">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:div[@xml:id='messaggio1']">
     <div id="text1">
         <xsl:apply-templates/>
      </div>
   </xsl:template>
   
   <xsl:template match="tei:p[@xml:id='indirizzo1']">
     <div id="indirizzo1">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:p[@xml:id='indirizzo2']">
     <div id="indirizzo2">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:signed">
     <div class="firma">
         <xsl:apply-templates/>
      </div>
   </xsl:template>

   <xsl:template match="tei:p[@xml:id='ita']">
     <p id="ita">
         <xsl:apply-templates/>
      </p>
   </xsl:template>

   <xsl:template match="tei:p[@xml:id='deu']">
     <p id="deu">
         <xsl:apply-templates/>
      </p>
   </xsl:template>

   <xsl:template match="tei:p[@xml:id='fra']">
     <p id="fra">
         <xsl:apply-templates/>
      </p>
   </xsl:template>

   <xsl:template match="tei:p[@xml:id='eng']">
     <p id="eng">
         <xsl:apply-templates/>
      </p>
   </xsl:template>
    
   <xsl:template match="tei:condition">
      <b>
         <xsl:text>Stato di conservazione: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>
   
   <xsl:template match="tei:material">
      <b>
         <xsl:text>Materiale: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>

   <xsl:template match="tei:dimensions">
      <b>
         <xsl:text>Dimensioni: </xsl:text>
      </b>
      <xsl:apply-templates/>
   </xsl:template>

   <xsl:template match="tei:height">
      <xsl:apply-templates/>
      <xsl:text>cm x</xsl:text>
   </xsl:template>

   <xsl:template match="tei:width">
      <xsl:apply-templates/>
      <xsl:text>cm</xsl:text>
   </xsl:template>

   <xsl:template match="tei:physDesc">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>

   <xsl:template match="tei:note">
   (
      <i>
      <xsl:apply-templates/> 
      </i>
   )
   </xsl:template>
   
    <xsl:template match="tei:support">
      <xsl:apply-templates/>
      <br/>
   </xsl:template>

   <xsl:template match="tei:settlement[@xml:id='setCorpus']">
      <b>
         <xsl:text>Città: </xsl:text>
      </b>
      <xsl:apply-templates/>
      <br/>
   </xsl:template>
</xsl:stylesheet>
