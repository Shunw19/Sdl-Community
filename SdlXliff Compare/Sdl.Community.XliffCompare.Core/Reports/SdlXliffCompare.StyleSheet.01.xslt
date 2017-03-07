﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/2000/svg"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:fn="http://www.w3.org/2005/xpath-functions"
xmlns:xlink="http://www.w3.org/1999/xlink" exclude-result-prefixes="xs fn">
  <xsl:output method="html" indent="yes"/>


  <xsl:template match="/">

    
    <html>
      <head>
        <title>SDLXLIFF Comparison Report</title>


        <style type="text/css">
          body
          {
          background: #FFFFFF;
          font-family: Verdana, Arial, Helvetica;
          font-size: 10pt;
          }
          a
          {
          color: #666699;
          }
          li
          {
          margin-top: 3;
          }
          h1
          {
          font-size: 18pt;
          }
          h2
          {
          font-size: 14pt;
          }
          h3
          {
          font-size: 12pt;
          }
          table
          {
          font-family: Arial, Verdana, Helvetica;
          border-color: #000000;
          border-collapse: collapse;
          font-size: 9pt;
          }
          th
          {
          color: white;
          background-color: #3366ff;
          }
          td
          {
          border: 1px solid #888888;
          }
          td.segmentId
          {
          color: black;
          background-color: #E9E9E9;
          }
          td.innerFileName
          {
          color: #003399;
          text-align: center;
          background-color:  #FFF8F0;
          }
          span.text
          {
          color:  Black;
          }
          span.textNew
          {
          color: Blue;
          text-decoration: underline;
          background-color:#ffff66;
          }
          span.textRemoved
          {
          color:  Red;
          text-decoration: line-through;
          }
          span.tag
          {
          color:  Gray;
          }
          span.tagNew
          {
          background-color: #DDEEFF;
          }
          span.tagRemoved
          {
          background-color:  #FFE8E8;
          }


          table.bargraph
          {
          margin-top: -1px;
          padding:0;
          font-size: 15px;
          height: 100%;
          width: 100%;
          }

          table.bargraph td.date
          {
          width: 75px;
          text-align:left;
          }

          table.bargraph td
          {
          width: 5px;
          height: 20px;
          font-size: 1px;
          padding-top: 2px;


          }

          table.histogram td
          {
          width: 5px;
          font-size: 1px;
          padding-top: 0px;
          }
          table.histogram td p
          {
          width: 20px;
          height: 3px;
          line-height: 0;
          margin: 0 1px 1px 0;
          padding: 0;
          font-size: 1px;
          }
        </style>

        <!--<link href="SdlXliffCompareReportType01.css"
               rel="stylesheet"
               type="text/css" />-->
      </head>
      <body>

        <xsl:apply-templates select="files"/>
      </body>
    </html>

  </xsl:template>

  <xsl:template match="files">

    <table style=" background-color: #ECF1FB" border="0" width="100%">
      <tr>
        <td width="80%"
              style="color: #333300; text-align: center; ">
          <font size="5">Comparison Report</font>

          <div style="font-size: 11px; padding: 2px 2px 2px 2px; ">
            <span style="padding: 2px 2px 2px 2px; ">
              (Total files processed: <xsl:value-of select="@count"/>,
            </span>
            <span style="padding: 2px 2px 2px 2px; ">
              compared: <xsl:value-of select="@filesCompared"/>,
            </span>
            <span style="padding: 2px 2px 2px 2px; ">
              errors: <xsl:value-of select="@filesWithErrors"/>,
            </span>
            <span style="padding: 2px 2px 2px 2px; ">
              <xsl:value-of select="@date"/>)
            </span>
          </div>
        </td>
        <td align="right" style="padding-right: 15px; font-family: 'Courier New', Courier, monospace;">
          <span style="color: #808080">Generated by: </span>
          <span style="color: Black; ">SDLXLIFF Compare</span>
          <br/>
        </td>
      </tr>
    </table>


    <br/>
    <br/>

    <xsl:apply-templates select="file"/>

  </xsl:template>




  <xsl:template match="file">




    <table cellpadding="0" cellspacing="0" style="color: Black; text-align: right;  background-color: #ECF1FB" border="0" width="100%">
      <tr>
        <td style="font-size: 12px; padding: 2px 2px 2px 2px; ">


          <span style="padding: 2px 5px 2px 1px;">Total Segments:</span>
          <span style="padding: 2px 2px 2px 1px; font-weight: Bold">
            <xsl:value-of select="@totalSegments"/>,
          </span>


          <span style="padding: 2px 2px 2px 1px">Translation Modifications:</span>
          <span style="padding: 2px 2px 2px 1px; font-weight: Bold">
            <xsl:value-of select="@totalContentChanges"/>
          </span>
          <span style="padding: 2px 2px 2px 1px">
            (<xsl:value-of select="@totalContentChangesPercentage"/>%),
          </span>


          <span style="padding: 2px 2px 2px 1px">Status Changes:</span>
          <span style="padding: 2px 2px 2px 1px; font-weight: Bold" >
            <xsl:value-of select="@totalStatusChanges"/>
          </span>
          <span style="padding: 2px 2px 2px 1px">
            (<xsl:value-of select="@totalStatusChangesPercentage"/>%),
          </span>


          <span style="padding: 2px 2px 2px 1px">Comments:</span>
          <span style="padding: 2px 5px 2px 1px; font-weight: Bold">
            <xsl:value-of select="@totalComments"/>
          </span>
        </td>

      </tr>
    </table>

    <table style="margin-bottom: 4px; color: Black; text-align: left; " border="1" width="100%">
      <tr style="color: #FFFFFF; text-align: left;  background-color: #006699; font-weight: bold;">
        <td style="text-align: left; font-size: 12px; padding: 2px 5px 2px 5px;">

        </td>
        <td width="55%" style=" padding: 2px 5px 2px 5px; ">
          File path
        </td>
        <td style="text-align: right;  padding: 2px 5px 2px 5px;">
          Not Translated
        </td>
        <td style="text-align: right;  padding: 2px 5px 2px 5px;">
          Draft
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;">
          Translated
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;">
          Translation Rejected
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;">
          Translation Approved
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;">
          Sign-off Rejected
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;">
          Signed Off
        </td>
      </tr>

      <tr style="background-color: #F2F2F2">
        <td style="text-align: left; padding: 2px 5px 2px 5px; background-color: #EBEBEB;color: #003300; font-weight: bold">
          Original
        </td>
        <td width="55%" style=" padding: 2px 5px 2px 5px; color: #003300; font-weight: normal ">
          <xsl:value-of select="@filePathOriginal"/>
        </td>
        <td style="text-align: right;  padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalNotTranslatedOriginal"/>
        </td>
        <td style="text-align: right;  padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalDraftOriginal"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalTranslatedOriginal"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalTranslationRejectedOriginal"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalTranslationApprovedOriginal"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalSignOffRejectedOriginal"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalSignedOffOriginal"/>
        </td>
      </tr>


      <tr style="background-color: #F2F2F2">
        <td style="text-align: left; padding: 2px 5px 2px 5px;background-color: #EBEBEB;color: #003300; font-weight: bold">
          Updated
        </td>
        <td width="55%" style=" padding: 2px 5px 2px 5px; color: #003300; font-weight: normal">
          <xsl:value-of select="@filePathUpdated"/>
        </td>
        <td style="text-align: right;  padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalNotTranslatedUpdated"/>
        </td>
        <td style="text-align: right; ; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalDraftUpdated"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalTranslatedUpdated"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalTranslationRejectedUpdated"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalTranslationApprovedUpdated"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalSignOffRejectedUpdated"/>
        </td>
        <td style="text-align: right; padding: 2px 5px 2px 5px;color: #003300; font-weight: normal">
          <xsl:value-of select="@totalSignedOffUpdated"/>
        </td>
      </tr>
    </table>


    <table cellpadding="0" cellspacing="0" style="margin-bottom: 4px; color: Black; background-color: #F2F2F2; " border="0" width="100%">
      <tr>
        <td width="30%" style="border-style: solid none solid solid;border-width: thin; border-color: #C0C0C0; text-align: left; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold">
          Translation Modifications
        </td>

        <td  style="border-style: solid none solid none; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold">
          Segments
        </td>


        <td colspan="2" style="border-style:  solid none solid none; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold">
          Words
        </td>

        <td colspan="2" style="border-style:  solid none solid none; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold">
          Characters
        </td>


        <td colspan="2" style="border-style:  solid solid solid none;  border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold">
          Tags/Placeables
        </td>


      </tr>
      <tr>


        <td  style="border-style: none none solid solid; border-width: thin; border-color: #C0C0C0; text-align: left; padding: 2px 5px 2px 5px; background-color: #F3F3F3; color: #003300; font-weight: bold; ">

        </td>
        <td  style="border-style: none solid solid none; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: normal;font-style: italic; ">
          Modified
        </td>

        <td  style="border-style: none none solid solid; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003399; font-weight: normal;font-style: italic; ">
          Added
        </td>
        <td  style="border-style: none solid solid none; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #800000; font-weight: normal;font-style: italic; ">
          Removed
        </td>


        <td  style="border-style: none none solid solid; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003399; font-weight: normal;font-style: italic; ">
          Added
        </td>
        <td  style="border-style: none solid solid none; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #800000; font-weight: normal;font-style: italic; ">
          Removed
        </td>

        <td  style="border-style: none none solid solid; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003399; font-weight: normal;font-style: italic; ">
          Added
        </td>
        <td  style="border-style: none solid solid none; border-width: thin; border-color: #C0C0C0; text-align: center; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #800000; font-weight: normal;font-style: italic; ">
          Removed
        </td>

 
      </tr>
      <tr>
        <td style="border-style: none none none solid; border-width: thin; border-color: #C0C0C0; text-align: left; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold; " >
          Perfect Match
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesPM"/>
        </td>


        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesPM_Words_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesPM_Words_removed"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesPM_Characters_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesPM_Characters_removed"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesPM_Tags_new"/>
        </td>
        <td style="border-style: none solid none none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; ">
          <xsl:value-of select="@totalTranslationChangesPM_Tags_removed"/>
        </td>

      </tr>
      <tr>
        <td style="border-style: none none none solid; border-width: thin; border-color: #C0C0C0; text-align: left; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold; ">
          Context Match
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesCM"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesCM_Words_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesCM_Words_removed"/>
        </td>


        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesCM_Characters_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesCM_Characters_removed"/>
        </td>


        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesCM_Tags_new"/>
        </td>
        <td style="border-style: none solid none none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; ">
          <xsl:value-of select="@totalTranslationChangesCM_Tags_removed"/>
        </td>

      

      </tr>
      <tr>
        <td style="border-style: none none none solid; border-width: thin; border-color: #C0C0C0; text-align: left; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold; ">
          Exact Match
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesExact"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesExact_Words_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesExact_Words_removed"/>
        </td>


        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesExact_Characters_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesExact_Characters_removed"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesExact_Tags_new"/>
        </td>
        <td style="border-style: none solid none none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; ">
          <xsl:value-of select="@totalTranslationChangesExact_Tags_removed"/>
        </td>


      
      </tr>
      <tr>
        <td style="border-style: none none none solid; border-width: thin; border-color: #C0C0C0; text-align: left; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold; ">
          Automated Translation
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesAT"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesAT_Words_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesAT_Words_removed"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesAT_Characters_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesAT_Characters_removed"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesAT_Tags_new"/>
        </td>
        <td style="border-style: none solid none none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; ">
          <xsl:value-of select="@totalTranslationChangesAT_Tags_removed"/>
        </td>

      
      </tr>
      <tr>
        <td style="border-style: none none none solid; border-width: thin; border-color: #C0C0C0; text-align: left; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold; ">
          Fuzzy/New Match
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesOther"/>
        </td>


        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesOther_Words_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesOther_Words_removed"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesOther_Characters_new"/>
        </td>
        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesOther_Characters_removed"/>
        </td>

        <td style="padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; border:none;">
          <xsl:value-of select="@totalTranslationChangesOther_Tags_new"/>
        </td>
        <td style="border-style: none solid none none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center;background-color: white; color: #003300; font-weight: normal; ">
          <xsl:value-of select="@totalTranslationChangesOther_Tags_removed"/>
        </td>
       
      </tr>
      <tr>
        <td style="border-style: solid none solid solid; border-width: thin; border-color: #C0C0C0; text-align: left; padding: 2px 5px 2px 5px; background-color: #F3F3F3; color: #003300; font-weight: normal; ">
          <span>Sub-Total</span>
        </td>
        <td style="border-style: solid none solid none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center; background-color: #F3F3F3; color: #003300; font-weight: bold;">

        </td>


        <td style="border-style: solid none solid solid; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center; background-color: #F3F3F3; color: #003300; font-weight: bold; ">
          <xsl:value-of select="@totalTranslationChangesTotal_Words_new"/>
        </td>
        <td style="border-style: solid solid solid none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center;background-color: #F3F3F3; color: #003300; font-weight: bold; ">
          <xsl:value-of select="@totalTranslationChangesTotal_Words_removed"/>
        </td>

        <td style="border-style: solid none solid solid; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center; background-color: #F3F3F3; color: #003300; font-weight: bold; ">
          <xsl:value-of select="@totalTranslationChangesTotal_Characters_new"/>
        </td>
        <td style="border-style: solid solid solid none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center;background-color: #F3F3F3; color: #003300; font-weight: bold; ">
          <xsl:value-of select="@totalTranslationChangesTotal_Characters_removed"/>
        </td>


        <td style="border-style: solid none solid solid; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center; background-color: #F3F3F3; color: #003300; font-weight: bold; ">
          <xsl:value-of select="@totalTranslationChangesTotal_Tags_new"/>
        </td>
        <td style="border-style: solid solid solid none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center; background-color: #F3F3F3; color: #003300; font-weight: bold; ">
          <xsl:value-of select="@totalTranslationChangesTotal_Tags_removed"/>
        </td>

      </tr>
      <tr>
        <td style="border-style: solid none solid solid; border-width: thin; border-color: #C0C0C0; text-align: left; padding: 2px 5px 2px 5px; background-color: #DFEAEA; color: #003300; font-weight: bold; ">
          Total
        </td>
        <td style="border-style: solid none solid none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center; background-color: #DFEAEA; color: #003300; font-weight: bold;">
          <xsl:value-of select="@totalTranslationChangesTotal"/>
        </td>
        <td colspan="2" style="border-style: solid none solid none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center; background-color: #DFEAEA; color: #003300; font-weight: bold; ">
          <xsl:value-of select="@totalTranslationChangesTotal_Words"/>
        </td>

        <td colspan="2" style="border-style: solid none solid none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center; background-color: #DFEAEA; color: #003300; font-weight: bold; ">
          <xsl:value-of select="@totalTranslationChangesTotal_Characters"/>
        </td>
        <td colspan="2" style="border-style: solid solid solid none; border-width: thin; border-color: #C0C0C0; padding: 2px 5px 2px 5px; text-align: center; background-color: #DFEAEA; color: #003300; font-weight: bold; ">
          <xsl:value-of select="@totalTranslationChangesTotal_Tags"/>
        </td>

       
      </tr>
    </table>




    <table cellpadding="0" cellspacing="0" style="margin-bottom: 1px; color: Black; text-align: left;  background-color: #FFFFDF " border="0" width="100%">
      <tr>


        <td style="font-size: 12px;  padding: 2px 2px 2px 2px">

          <span style="padding: 2px 2px 2px 1px">Filtered Segments:</span>
          <span style="padding: 2px 2px 2px 1px; font-weight: Bold">
            <xsl:value-of select="@filteredSegments"/>
          </span>

          <span style="padding: 2px 2px 2px 1px">, Translation Modifications:</span>
          <span style="padding: 2px 2px 2px 1px; font-weight: Bold">
            <xsl:value-of select="@filteredContentChanges"/>
          </span>


          <span style="padding: 2px 2px 2px 1px">, Status Changes:</span>
          <span style="padding: 2px 2px 2px 1px; font-weight: Bold" >
            <xsl:value-of select="@filteredStatusChanges"/>
          </span>


          <span style="padding: 2px 2px 2px 1px">, Comments:</span>
          <span style="padding: 2px 5px 2px 1px; font-weight: Bold">
            <xsl:value-of select="@filteredComments"/>
          </span>
        </td>
      </tr>

    </table>





    <xsl:choose>
      <xsl:when test="@filePathUpdated != ''">

        <xsl:for-each select="innerFiles">

          <xsl:choose>
            <xsl:when test="@count > '0' ">
              <table border="1" cellpadding="3"  cellspacing="0" width="100%">
                <tr>
                  <th>ID</th>
                  <th>Source</th>
                  <th>Status</th>
                  <th>Match</th>
                  <th>Target (Original)</th>
                  <th>Target (Updated)</th>
                  <th>Target (Comparison)</th>
                  <th>Modifications</th>
                  <th>%</th>
                  <th>Comments</th>
                </tr>
                <xsl:for-each select="innerFile">
                  <xsl:if test="@showInnerFileName = 'true'">
                    <tr>
                      <td colspan="10" class="innerFileName">
                        <xsl:value-of select="@name"/>
                        <span style="padding: 2px 2px 2px 2px; ">
                          (filtered: <xsl:value-of select="@filteredSegmentCount"/>)
                        </span>
                      </td>
                    </tr>
                  </xsl:if>
                  <xsl:apply-templates select="paragraphs"/>
                </xsl:for-each>
              </table>
            </xsl:when>
            <xsl:otherwise>
              <div style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight bold; color: Blue" >
                No records filtered
              </div>
            </xsl:otherwise>
          </xsl:choose>

        </xsl:for-each>
      </xsl:when>
      <xsl:otherwise>
        <!--error-->
        <div style="font-family: Arial, Helvetica, sans-serif; font-size: 18px; font-weight bold; color: #FF0000" >
          Error: Unable to locate the associated (updated) file
        </div>
      </xsl:otherwise>
    </xsl:choose>


    <br/>
    <br/>
    <br/>

  </xsl:template>

  <xsl:template match="barGraph">

  </xsl:template>

  <xsl:template match="paragraphs">

    <xsl:for-each select="paragraph">
      <xsl:for-each select="segments">
        <xsl:apply-templates select="segment"/>
      </xsl:for-each>
    </xsl:for-each>




  </xsl:template>

  <xsl:template match="segment">
    <tr>
      <td class="segmentId">
        <xsl:value-of select="@segmentId"/>
      </td>
      <td>
        <xsl:copy-of select="source"/>
      </td>
      <td>
        <xsl:copy-of select="segmentStatus"/>
      </td>

      <xsl:copy-of select="translationMatchType"/>

      <td>
        <xsl:copy-of select="targetOriginal"/>
      </td>

      <td>
        <xsl:copy-of select="targetUpdated"/>
      </td>

      <td>
        <xsl:copy-of select="targetComparison"/>
      </td>

      <td>
        <span>W:&#160;</span>(<span style="color: #003399;">
          +<xsl:copy-of select="translationChangedWords_added"/>
        </span>/<span style="color: #800000;">
          -<xsl:copy-of select="translationChangedWords_removed"/>
        </span>)

        <br/>
        <span>C:&#160;</span>(<span style="color: #003399;">
          +<xsl:copy-of select="translationChangedCharacters_added"/>
        </span>/<span style="color: #800000;">
          -<xsl:copy-of select="translationChangedCharacters_removed"/>
        </span>)

        <br/>
        <span>TP:&#160;</span>(<span style="color: #003399;">
          +<xsl:copy-of select="translationChangedTags_added"/>
        </span>/<span style="color: #800000;">
          -<xsl:copy-of select="translationChangedTags_removed"/>
        </span>)
      </td>

      <td>
        <xsl:copy-of select="translationChangedPercentage_01"/>%
      </td>



      <td>
        <xsl:for-each select="comments">
          <xsl:apply-templates select="comment"/>
        </xsl:for-each>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="comment">
    <div style="margin: 1px; padding: 0; border: thin solid #C0C0C0; text-align: left;">
      <p style="margin: 0px; padding: 3;">
        <xsl:value-of select="."/>
        <!--<xsl:apply-templates/>-->
      </p>

      <div style="background-color: #EAEAEA; text-align: left; color: Black">

        <xsl:choose>
          <xsl:when test="@severity = 'High'">
            <span style="padding: 3px; color: red; font-weight: bold;">
              <xsl:value-of select="@severity"/>
            </span>
          </xsl:when>
          <xsl:otherwise>
            <span style="padding: 3px; font-weight: bold;">
              <xsl:value-of select="@severity"/>
            </span>
          </xsl:otherwise>
        </xsl:choose>

        <span style="padding: 3px;">
          <xsl:value-of select="@author"/>
        </span>
        <span style="padding: 3px; font-style: italic;">
          <xsl:value-of select="@date"/>
        </span>
      </div>
    </div>
  </xsl:template>



</xsl:stylesheet>
