<!DOCTYPE html>
<%@page import="com.ibm.internal.assignment.entity.City"%>
<%@page import="com.ibm.internal.assignment.entity.Company"%>
<%@page import="com.ibm.internal.assignment.entity.Court"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<html class="">
   <head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=Edge">
      <meta charset="utf-8">
      <title>Gelda Advocate</title>
      <meta name="fb_admins_meta_tag" content="">
      <meta property="og:title" content="Gelda advocate">
      <meta id="wixMobileViewport" name="viewport"
         content="width=980, user-scalable=yes">
      <meta name="fragment" content="!">
      <!-- DATA -->
      <link rel="stylesheet" href="/static/css/viewer.css">
      <link id="font_googleFonts" href="/static/css/css.css" rel="stylesheet">
      <link id="font_latin-ext" href="/static/css/latin-ext.css"
         rel="stylesheet">
      <link id="font_cyrillic" href="/static/css/cyrillic.css"
         rel="stylesheet">
      <link id="font_japanese" href="/static/css/japanese.css"
         rel="stylesheet">
      <link id="font_korean" href="/static/css/korean.css" rel="stylesheet">
      <link id="font_arabic" href="/static/css/arabic.css" rel="stylesheet">
      <link id="font_hebrew" href="/static/css/hebrew.css" rel="stylesheet">
      <link id="font_latin" href="/static/css/latin.css" rel="stylesheet">
   </head>
   <body style="" class="">
      <div id="SITE_CONTAINER">
         <div class="noop" data-reactid=".0">
            <div data-reactid=".0.0">
               <style type="text/css" data-reactid=".0.0.$theme_fonts">
                .ul-no-bult{
               						  list-style-type: none;
               						  }
                  .font_0 {
                  font: normal normal normal 32px/1.1em Signika, sans-serif;
                  color: #FFFFFF;
                  }
                  .font_1 {
                  font: normal normal normal 12px/1.1em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  color: #FFFFFF;
                  }
                  .font_2 {
                  font: normal normal normal 32px/1.1em Signika, sans-serif;
                  color: #404144;
                  }
                  .font_3 {
                  font: normal normal normal 60px/1.1em Signika, sans-serif;
                  color: #404144;
                  }
                  .font_4 {
                  font: normal normal normal 40px/1.3em Signika, sans-serif;
                  color: #404144;
                  }
                  .font_5 {
                  font: normal normal normal 26px/1.2em Signika, sans-serif;
                  color: #404144;
                  }
                  .font_6 {
                  font: normal normal normal 18px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  color: #404144;
                  }
                  .font_7 {
                  font: normal normal normal 16px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  color: #404144;
                  }
                  .font_8 {
                  font: normal normal normal 12px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  color: #404144;
                  }
                  .font_9 {
                  font: normal normal normal 11px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  color: #404144;
                  }
                  .font_10 {
                  font: normal normal normal 11px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  color: #404144;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$theme_colors">
                  .color_0 {
                  color: #FFFFFF;
                  }
                  .backcolor_0 {
                  background-color: #FFFFFF;
                  }
                  .color_1 {
                  color: #FFFFFF;
                  }
                  .backcolor_1 {
                  background-color: #FFFFFF;
                  }
                  .color_2 {
                  color: #000000;
                  }
                  .backcolor_2 {
                  background-color: #000000;
                  }
                  .color_3 {
                  color: rgba(0, 136, 203, 1);
                  }
                  .backcolor_3 {
                  background-color: rgba(0, 136, 203, 1);
                  }
                  .color_4 {
                  color: rgba(255, 180, 0, 1);
                  }
                  .backcolor_4 {
                  background-color: rgba(255, 180, 0, 1);
                  }
                  #footer {
                  position: fixed;
                  bottom: 0;
                  width: 100%;
                  }
                  .color_5 {
                  color: rgba(237, 28, 36, 1);
                  }
                  .backcolor_5 {
                  background-color: rgba(237, 28, 36, 1);
                  }
                  .color_6 {
                  color: rgba(164, 167, 172, 1);
                  }
                  .backcolor_6 {
                  background-color: rgba(164, 167, 172, 1);
                  }
                  .color_7 {
                  color: rgba(255, 180, 0, 1);
                  }
                  .backcolor_7 {
                  background-color: rgba(255, 180, 0, 1);
                  }
                  .color_8 {
                  color: rgba(255, 255, 255, 1);
                  }
                  .backcolor_8 {
                  background-color: rgba(255, 255, 255, 1);
                  }
                  .color_9 {
                  color: rgba(255, 237, 193, 1);
                  }
                  .backcolor_9 {
                  background-color: rgba(255, 237, 193, 1);
                  }
                  .color_10 {
                  color: rgba(108, 111, 116, 1);
                  }
                  .backcolor_10 {
                  background-color: rgba(108, 111, 116, 1);
                  }
                  .color_11 {
                  color: #FFFFFF;
                  }
                  .backcolor_11 {
                  background-color: #FFFFFF;
                  }
                  .color_12 {
                  color: #B8BBC1;
                  }
                  .backcolor_12 {
                  background-color: #B8BBC1;
                  }
                  .color_13 {
                  color: rgba(128, 130, 134, 1);
                  }
                  .backcolor_13 {
                  background-color: rgba(128, 130, 134, 1);
                  }
                  .color_14 {
                  color: #404144;
                  }
                  .backcolor_14 {
                  background-color: #404144;
                  }
                  .color_15 {
                  color: #2D2D2F;
                  }
                  .backcolor_15 {
                  background-color: #2D2D2F;
                  }
                  .color_16 {
                  color: #FFDB89;
                  }
                  .backcolor_16 {
                  background-color: #FFDB89;
                  }
                  .color_17 {
                  color: #FFC540;
                  }
                  .backcolor_17 {
                  background-color: #FFC540;
                  }
                  .color_18 {
                  color: rgba(255, 180, 0, 1);
                  }
                  .backcolor_18 {
                  background-color: rgba(255, 180, 0, 1);
                  }
                  .color_19 {
                  color: #B98000;
                  }
                  .backcolor_19 {
                  background-color: #B98000;
                  }
                  .color_20 {
                  color: #5D4100;
                  }
                  .backcolor_20 {
                  background-color: #5D4100;
                  }
                  .color_21 {
                  color: #B0D3E5;
                  }
                  .backcolor_21 {
                  background-color: #B0D3E5;
                  }
                  .color_22 {
                  color: #8DB6CC;
                  }
                  .backcolor_22 {
                  background-color: #8DB6CC;
                  }
                  .color_23 {
                  color: #6096B3;
                  }
                  .backcolor_23 {
                  background-color: #6096B3;
                  }
                  .color_24 {
                  color: #0B689A;
                  }
                  .backcolor_24 {
                  background-color: #0B689A;
                  }
                  .color_25 {
                  color: #05344D;
                  }
                  .backcolor_25 {
                  background-color: #05344D;
                  }
                  .color_26 {
                  color: #B9DEA9;
                  }
                  .backcolor_26 {
                  background-color: #B9DEA9;
                  }
                  .color_27 {
                  color: #8FBE7A;
                  }
                  .backcolor_27 {
                  background-color: #8FBE7A;
                  }
                  .color_28 {
                  color: #4F9E2D;
                  }
                  .backcolor_28 {
                  background-color: #4F9E2D;
                  }
                  .color_29 {
                  color: #35691E;
                  }
                  .backcolor_29 {
                  background-color: #35691E;
                  }
                  .color_30 {
                  color: #1A340F;
                  }
                  .backcolor_30 {
                  background-color: #1A340F;
                  }
                  .color_31 {
                  color: #F5CBA4;
                  }
                  .backcolor_31 {
                  background-color: #F5CBA4;
                  }
                  .color_32 {
                  color: #ECAF77;
                  }
                  .backcolor_32 {
                  background-color: #ECAF77;
                  }
                  .color_33 {
                  color: #E36D01;
                  }
                  .backcolor_33 {
                  background-color: #E36D01;
                  }
                  .color_34 {
                  color: #974901;
                  }
                  .backcolor_34 {
                  background-color: #974901;
                  }
                  .color_35 {
                  color: #4B2400;
                  }
                  .backcolor_35 {
                  background-color: #4B2400;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s0">
                  .s0screenWidthBackground {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s0[data-state~="mobileView"] {
                  position: absolute !important;
                  }
                  .s0[data-state~="fixedPosition"] {
                  position: fixed !important;
                  left: auto !important;
                  z-index: 50;
                  }
                  .s0[data-state~="fixedPosition"].s0_footer {
                  top: auto;
                  bottom: 0;
                  }
                  .s0_bg {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  background-color: rgba(45, 45, 47, 1);
                  box-shadow: 0 0 5px rgba(0, 0, 0, 0.7);
                  border-top: 0px solid rgba(45, 45, 47, 1);
                  border-bottom: 0px solid rgba(45, 45, 47, 1);
                  }
                  .s0_bg_footer {
                  position: absolute;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  background-color: rgba(45, 45, 47, 1);
                  box-shadow: 0 0 5px rgba(0, 0, 0, 0.7);
                  border-top: 0px solid rgba(45, 45, 47, 1);
                  border-bottom: 0px solid rgba(45, 45, 47, 1);
                  }
                  .s0[data-state~="mobileView"] .s0bg {
                  left: 10px;
                  right: 10px;
                  }
                  .s0bg {
                  position: absolute;
                  top: 0px;
                  right: 0;
                  bottom: 0px;
                  left: 0;
                  background-color: rgba(45, 45, 47, 1);
                  border-radius: 0;
                  }
                  .s0inlineContent {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s0centeredContent {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s1">
                  .s1 {
                  word-wrap: break-word;
                  }
                  .s1 li {
                  font-style: inherit;
                  font-weight: inherit;
                  line-height: inherit;
                  letter-spacing: normal;
                  }
                  .s1 ol, .s1 ul {
                  padding-left: 1.3em;
                  padding-right: 0;
                  margin-left: 0.5em;
                  margin-right: 0;
                  line-height: normal;
                  letter-spacing: normal;
                  }
                  .s1 ol[class~="wix-list"], .s1 ul[class~="wix-list"] {
                  padding-left: 0;
                  padding-right: 0;
                  }
                  .s1 ol[class~="wix-list"] li, .s1 ul[class~="wix-list"] li {
                  margin-left: 1.3em;
                  margin-right: 0;
                  }
                  .s1 ol[class~="wix-list"][dir="rtl"], .s1 ul[class~="wix-list"][dir="rtl"]
                  {
                  padding-left: 0;
                  padding-right: 0;
                  }
                  .s1 ol[class~="wix-list"][dir="rtl"] li, .s1 ul[class~="wix-list"][dir="rtl"] li
                  {
                  margin-left: 0;
                  margin-right: 1.3em;
                  }
                  .s1 ul {
                  list-style-type: disc;
                  }
                  .s1 ol {
                  list-style-type: decimal;
                  }
                  .s1 ul ul, .s1 ol ul {
                  list-style-type: circle;
                  }
                  .s1 ul ul ul, .s1 ol ul ul {
                  list-style-type: square;
                  }
                  .s1 ul ol ul, .s1 ol ol ul {
                  list-style-type: square;
                  }
                  .s1 ul[dir="rtl"], .s1 ol[dir="rtl"] {
                  padding-left: 0;
                  padding-right: 1.3em;
                  margin-left: 0;
                  margin-right: 0.5em;
                  }
                  .s1 ul[dir="rtl"] ul, .s1 ul[dir="rtl"] ol, .s1 ol[dir="rtl"] ul, .s1 ol[dir="rtl"] ol
                  {
                  padding-left: 0;
                  padding-right: 1.3em;
                  margin-left: 0;
                  margin-right: 0.5em;
                  }
                  .s1 p {
                  margin: 0;
                  line-height: normal;
                  letter-spacing: normal;
                  }
                  .s1 h1 {
                  margin: 0;
                  line-height: normal;
                  letter-spacing: normal;
                  }
                  .s1 h2 {
                  margin: 0;
                  line-height: normal;
                  letter-spacing: normal;
                  }
                  .s1 h3 {
                  margin: 0;
                  line-height: normal;
                  letter-spacing: normal;
                  }
                  .s1 h4 {
                  margin: 0;
                  line-height: normal;
                  letter-spacing: normal;
                  }
                  .s1 h5 {
                  margin: 0;
                  line-height: normal;
                  letter-spacing: normal;
                  }
                  .s1 h6 {
                  margin: 0;
                  line-height: normal;
                  letter-spacing: normal;
                  }
                  .s1 a {
                  color: inherit;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s2">
                  .s2itemsContainer {
                  width: calc(100% - 0px);
                  white-space: nowrap;
                  position: relative;
                  overflow: hidden;
                  }
                  .s2moreContainer {
                  overflow: visible;
                  display: inherit;
                  white-space: nowrap;
                  width: auto;
                  background-color: rgba(45, 45, 47, 1);
                  border-radius: 0;
                  }
                  .s2dropWrapper {
                  z-index: 99999;
                  display: block;
                  opacity: 1;
                  visibility: hidden;
                  position: absolute;
                  margin-top: 7px;
                  }
                  .s2dropWrapper[data-dropMode="dropUp"] {
                  margin-top: 0;
                  margin-bottom: 7px;
                  }
                  .s2repeaterButton {
                  height: 100%;
                  position: relative;
                  box-sizing: border-box;
                  display: inline-block;
                  cursor: pointer;
                  font: normal normal normal 12px/1.1em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  }
                  .s2repeaterButton[data-state~="header"] a, .s2repeaterButton[data-state~="header"] div
                  {
                  cursor: default !important;
                  }
                  .s2repeaterButton_gapper {
                  padding: 0 11px;
                  }
                  .s2repeaterButtonlabel {
                  display: inline-block;
                  padding: 0 10px;
                  color: #FFFFFF;
                  transition: color 0.4s ease 0s;
                  }
                  .s2repeaterButton[data-state~="drop"] {
                  width: 100%;
                  display: block;
                  }
                  .s2repeaterButton[data-state~="drop"] .s2repeaterButtonlabel {
                  padding: 0 .5em;
                  }
                  .s2repeaterButton[data-state~="over"] .s2repeaterButtonlabel {
                  color: #FFB400;
                  transition: color 0.4s ease 0s;
                  }
                  .s2repeaterButton[data-state~="selected"] .s2repeaterButtonlabel {
                  color: #FFB400;
                  transition: color 0.4s ease 0s;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s3">
                  .s3screenWidthBackground {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s3[data-state~="mobileView"] {
                  position: absolute !important;
                  }
                  .s3[data-state~="fixedPosition"] {
                  position: fixed !important;
                  left: auto !important;
                  z-index: 50;
                  }
                  .s3[data-state~="fixedPosition"].s3_footer {
                  top: auto;
                  bottom: 0;
                  }
                  .s3bg {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s3inlineContent {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s3centeredContent {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s4">
                  .s4bg {
                  background-color: rgba(45, 45, 47, 1);
                  box-sizing: border-box;
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  border-top: 0px solid rgba(45, 45, 47, 1);
                  border-bottom: 0px solid rgba(45, 45, 47, 1);
                  }
                  .s4inlineContent {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s5">
                  .s5itemsContainer {
                  position: absolute;
                  width: 100%;
                  height: 100%;
                  white-space: nowrap;
                  }
                  .s5itemsContainer>div:last-child {
                  margin: 0 !important;
                  }
                  .s5[data-state~="mobileView"] .s5itemsContainer {
                  position: absolute;
                  width: 100%;
                  height: 100%;
                  white-space: normal;
                  }
                  .s5imageItemlink {
                  cursor: pointer;
                  }
                  .s5imageItemimageimage {
                  position: static;
                  box-shadow: #000 0 0 0;
                  -webkit-user-select: none;
                  -moz-user-select: none;
                  -ms-user-select: none;
                  user-select: none;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s6">
                  .s6screenWidthBackground {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s6[data-state~="mobileView"] {
                  position: absolute !important;
                  }
                  .s6[data-state~="fixedPosition"] {
                  position: fixed !important;
                  left: auto !important;
                  z-index: 50;
                  }
                  .s6[data-state~="fixedPosition"].s6_footer {
                  top: auto;
                  bottom: 0;
                  }
                  .s6bg {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s6inlineContent {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s6centeredContent {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s7">
                  .s7 {
                  height: 100px;
                  width: 100px;
                  }
                  .s7overlay {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  background-color: rgba(0, 0, 0, 0.664);
                  }
                  .s7inlineContent {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s8">
                  .s8bg {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s8[data-state~="mobileView"] .s8bg {
                  left: 10px;
                  right: 10px;
                  }
                  .s8inlineContent {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s9">
                  .s9 {
                  border-bottom: 3px solid rgba(64, 65, 68, 1);
                  height: 0 !important;
                  min-height: 0 !important;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s10">
                  .s10bg {
                  border-radius: 0;
                  background-color: rgba(255, 180, 0, 1);
                  border: 6px solid rgba(255, 180, 0, 1);
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 10px;
                  left: 0;
                  }
                  .s10_arrow {
                  position: absolute;
                  bottom: 0;
                  left: 50%;
                  margin-left: -10px;
                  border: solid transparent;
                  border-width: 10px 10px 0;
                  border-top-color: rgba(255, 180, 0, 1);
                  }
                  .s10inlineContent {
                  border-radius: 0;
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 30px;
                  left: 0;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s11">
                  .s11link { //
                  position: absolute;
                  top: 0;
                  right: 0; //
                  bottom: 0;
                  left: 0;
                  border-radius: 5px;
                  transition: border-color 0.4s ease 0s, background-color 0.4s ease 0s;
                  background: rgba(64, 65, 68, 1) url(/static/images/shiny1button_bg.png)
                  50% 50% repeat-x;
                  border: solid rgba(64, 65, 68, 1) 0px;
                  }
                  .s11label {
                  font: normal normal normal 18px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  transition: color 0.4s ease 0s;
                  color: #FFFFFF;
                  display: inline-block;
                  margin-top: calc(-1 * 0px);
                  position: relative;
                  white-space: nowrap;
                  }
                  .s11[data-state~="sv_buttonUsesFlex"] .s11label {
                  margin-top: 0;
                  }
                  .s11[data-disabled="false"] {
                  cursor: pointer !important;
                  }
                  .s11[data-disabled="false"]:active[data-state~="mobile"] .s11link, .s11[data-disabled="false"]:hover[data-state~="desktop"] .s11link
                  {
                  transition: border-color 0.4s ease 0s, background-color 0.4s ease 0s;
                  background-color: rgba(128, 130, 134, 1);
                  border-color: rgba(64, 65, 68, 1);
                  }
                  .s11[data-disabled="false"]:active[data-state~="mobile"] .s11label, .s11[data-disabled="false"]:hover[data-state~="desktop"] .s11label
                  {
                  transition: color 0.4s ease 0s;
                  color: #FFFFFF;
                  }
                  .s11[data-disabled="true"] .s11link {
                  background-color: rgba(204, 204, 204, 1);
                  border-color: rgba(204, 204, 204, 1);
                  }
                  .s11[data-disabled="true"] .s11label {
                  color: #FFFFFF;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s12">
                  .s12 {
                  border-bottom: 3px solid rgba(255, 180, 0, 1);
                  height: 0 !important;
                  min-height: 0 !important;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s13">
                  .s13 {
                  -webkit-user-select: none;
                  -moz-user-select: none;
                  -ms-user-select: none;
                  user-select: none;
                  -webkit-user-drag: none;
                  -moz-user-drag: none;
                  -ms-user-drag: none;
                  user-drag: none;
                  -webkit-user-modify: ready-only;
                  -moz-user-modify: ready-only;
                  -ms-user-modify: ready-only;
                  user-modify: ready-only;
                  border-radius: 0;
                  overflow: hidden;
                  background: rgba(184, 187, 193, 0.2);
                  }
                  .s13:hover>.s13_buttons, .s13:hover>.s13autoplay, .s13:hover .s13_pnl {
                  opacity: 1;
                  }
                  .s13_border {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  border-radius: 0;
                  border: 0px solid rgba(184, 187, 193, 0.2);
                  pointer-events: none;
                  background: none !important;
                  }
                  .s13itemsContainer {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  border-radius: 0;
                  overflow: hidden;
                  }
                  .s13_btn {
                  transition: opacity 0.5s ease 0s;
                  opacity: 0.4;
                  height: 70px;
                  background:
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/arrows_white_new3.png)
                  no-repeat;
                  width: 45px;
                  position: absolute;
                  top: 50%;
                  margin-top: -35px;
                  cursor: pointer;
                  }
                  .s13[data-state~="mobile"] .s13_btn {
                  opacity: 1;
                  }
                  .s13buttonPrev {
                  left: 20px;
                  background-position: 0 0;
                  }
                  .s13buttonNext {
                  right: 20px;
                  background-position: 100% 0;
                  }
                  .s13autoplay {
                  transition: opacity 0.5s ease 0s;
                  opacity: 0;
                  position: absolute;
                  right: 20px;
                  bottom: 20px;
                  width: 10px;
                  height: 10px;
                  padding: 5px;
                  cursor: pointer;
                  }
                  .s13counter {
                  display: none;
                  }
                  .s13[data-state~="autoplayOff"] .s13autoplay>span {
                  display: inline-block;
                  border: 5px solid transparent;
                  border-left: 5px solid #FFFFFF;
                  width: 0;
                  height: 0;
                  position: relative;
                  z-index: 0;
                  }
                  .s13[data-state~="autoplayOn"] .s13autoplay>span {
                  display: inline-block;
                  border-left: 2px solid #FFFFFF;
                  border-right: 2px solid #FFFFFF;
                  height: 10px;
                  width: 1px;
                  margin-right: 5px;
                  position: relative;
                  z-index: 0;
                  }
                  .s13_buttons {
                  transition: opacity 0.5s ease 0s;
                  opacity: 0;
                  }
                  .s13[data-state~="mobile"] .s13_buttons {
                  opacity: 1;
                  }
                  .s13[data-state~="showTextPanel"] .s13_pnl {
                  opacity: 1;
                  }
                  .s13_btn:hover {
                  opacity: 1;
                  }
                  .s13[data-state~="touchRollOver"] .s13_buttons, .s13[data-state~="touchRollOver"] .s13autoplay,
                  .s13[data-state~="touchRollOver"] .s13_pnl, .s13[data-state~="touchRollOver"] .s13_btn
                  {
                  opacity: 1;
                  }
                  .s13[data-state~="showButtons"] .s13_buttons {
                  opacity: 1;
                  }
                  .s13imageItemtitle, .s13imageItemdescription {
                  overflow: hidden;
                  text-overflow: ellipsis;
                  white-space: pre-line;
                  }
                  .s13imageItemimageWrapper {
                  position: absolute;
                  }
                  .s13imageItemzoom {
                  position: absolute;
                  top: 0px;
                  right: 0px;
                  bottom: 0px;
                  left: 0px;
                  }
                  .s13imageItemimage {
                  border-radius: 0;
                  }
                  .s13imageItempanel {
                  background-color: rgba(64, 65, 68, 1);
                  transition: opacity 0.5s ease 0s;
                  opacity: 0;
                  position: absolute;
                  left: 20px;
                  bottom: 20px;
                  margin-right: 100px;
                  border-top-left-radius: 0 !important;
                  border-top-right-radius: 0 !important;
                  }
                  .s13imageItem h3, .s13imageItem p, .s13imageItem a {
                  color: #FFFFFF;
                  }
                  .s13imageItemtitle {
                  font: normal normal normal 18px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  }
                  .s13imageItemlink {
                  font: normal normal normal 12px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  }
                  .s13imageItemdescription {
                  font: normal normal normal 12px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  }
                  .s13imageItem[data-state~="link"] .s13imageItemlink {
                  text-decoration: underline;
                  cursor: pointer;
                  font: normal normal normal 12px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  color: #FFFFFF;
                  }
                  .s13imageItem[data-state~="noLink"] .s13imageItemlink {
                  display: none;
                  }
                  .s13imageItem[data-state~="showPanel"] .s13imageItempanel {
                  opacity: 1;
                  }
                  .s13imageItem[data-state~="notShowPanel"].s13imageItempanel {
                  opacity: 0;
                  }
                  .s13imageItem[data-state~="transOut"] .s13imageItempanel, .s13imageItem[data-state~="transIn"] .s13imageItempanel
                  {
                  opacity: 0;
                  }
                  .s13imageItemimageimage {
                  position: static;
                  box-shadow: #000 0 0 0;
                  -webkit-user-select: none;
                  -moz-user-select: none;
                  -ms-user-select: none;
                  user-select: none;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s14">
                  .s14_zoomedin {
                  cursor:
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/cursor_zoom_out.png),
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/cursor_zoom_out.cur),
                  auto;
                  overflow: hidden;
                  display: block;
                  }
                  .s14_zoomedout {
                  cursor:
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/cursor_zoom_in.png),
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/cursor_zoom_in.cur),
                  auto;
                  }
                  .s14link {
                  display: block;
                  border-radius: 0;
                  background-color: rgba(184, 187, 193, 0.2);
                  border: 3px solid rgba(184, 187, 193, 0.2);
                  overflow: hidden;
                  height: 100%;
                  }
                  .s14img {
                  overflow: hidden;
                  border-radius: calc(0px - 3px);
                  }
                  .s14imgimage {
                  position: static;
                  box-shadow: #000 0 0 0;
                  -webkit-user-select: none;
                  -moz-user-select: none;
                  -ms-user-select: none;
                  user-select: none;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$s15">
                  .s15[data-disabled="false"] {
                  cursor: pointer;
                  }
                  .s15[data-disabled="false"]:active[data-state~="mobile"] .s15label, .s15[data-disabled="false"]:hover[data-state~="desktop"] .s15label
                  {
                  color: #B8BBC1;
                  transition: color 0.4s ease 0s;
                  }
                  .s15link {
                  position: absolute;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  }
                  .s15label {
                  font: normal normal normal 11px/1.3em Tahoma, tahoma-w01-regular,
                  tahoma-w02-regular, tahoma-w10-regular, tahoma-w15--regular,
                  tahoma-w99-regular, sans-serif;
                  transition: color 0.4s ease 0s;
                  color: #FFB400;
                  white-space: nowrap;
                  display: inline-block;
                  }
                  .s15[data-disabled="true"] .s15label {
                  color: #FFFFFF;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$wixAds">
                  .wixAdsmobileAd {
                  width: 100%;
                  height: 30px;
                  position: relative;
                  display: block;
                  text-align: center;
                  background-image:
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/wixads/BG91x1.jpg);
                  background-repeat: repeat;
                  background-size: 100% 30px;
                  z-index: 999;
                  }
                  .wixAdsdesktopWADBottom {
                  position: fixed;
                  z-index: 999;
                  width: 100%;
                  bottom: 0;
                  max-height: 10vh;
                  }
                  .wixAdsdesktopWADBottomContent {
                  width: 100%;
                  height: 40px;
                  text-align: center;
                  background-color: #404040;
                  border-radius: 6px 6px 0 0;
                  pointer-events: all;
                  cursor: pointer;
                  }
                  .wixAdsdesktopWADBottomContent:hover {
                  background-color: #222;
                  }
                  .wixAds[data-state~="facebook"] .wixAdsdesktopWADBottomContent {
                  width: 500px;
                  margin: 0 auto;
                  }
                  .wixAdsdesktopWADTop {
                  position: fixed;
                  z-index: 999;
                  height: 26px;
                  top: 0;
                  right: 50px;
                  overflow: hidden;
                  background-color: #404040;
                  border-radius: 0 0 6px 6px;
                  pointer-events: all;
                  cursor: pointer;
                  -webkit-transition: all .3s ease-in-out;
                  transition: all .3s ease-in-out;
                  }
                  .wixAdsdesktopWADTop:hover {
                  height: 97px;
                  background-color: rgba(50, 50, 50, 0.8);
                  }
                  .wixAdsdesktopWADTop:hover .wixAdsdesktopWADTopLabel {
                  background-color: #222;
                  }
                  .wixAdsdesktopWADTopLabel {
                  padding: 6px;
                  font-size: 13px;
                  line-height: 1.3em;
                  color: #FFF;
                  width: 100%;
                  font-size: 13px;
                  color: #FFF;
                  font-weight: bold;
                  line-height: 18px;
                  text-align: justify;
                  padding: 5px 10px;
                  }
                  .wixAds[data-state~="desktop"] .wixAdsmobileAd {
                  display: none;
                  }
                  .wixAds[data-state~="mobile"] .wixAdsdesktopWADTop {
                  display: none;
                  }
                  .wixAds[data-state~="mobile"] .wixAdsdesktopWADBottom {
                  display: none;
                  }
                  .wixAdsdesktopWADTopLabel .wixAds_smallMusa {
                  display: inline-block;
                  text-indent: -9999px;
                  width: 16px;
                  height: 16px;
                  margin-right: 5px;
                  background-image:
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/wixads/wf_label_static.png);
                  background-repeat: no-repeat;
                  background-position: 0% 0%;
                  }
                  .wixAdsdesktopWADTopLabel .wixAds_smallLogo {
                  display: inline-block;
                  text-indent: -9999px;
                  width: 29px;
                  height: 16px;
                  background-image:
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/wixads/wf_label_static.png);
                  background-repeat: no-repeat;
                  background-position: -16px top;
                  }
                  .wixAdsdesktopWADTopContent {
                  font-size: 13px;
                  line-height: 1.3em;
                  color: #ffffff;
                  font-weight: bold;
                  line-height: 18px;
                  text-align: justify;
                  padding: 5px 10px;
                  width: 100%;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_faceBanner {
                  background-color: rgba(64, 64, 64, 1);
                  width: 500px;
                  height: 100%;
                  margin: 0 auto;
                  border-radius: 6px 6px 0 0;
                  padding: 5px 0 0 0;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_faceBanner div {
                  display: inline-block;
                  height: 30px;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_faceBanner .wixAds_txt {
                  color: #fff;
                  font-weight: bold;
                  font-size: 15px;
                  text-align: justify;
                  margin: -2px 10px 0 19px;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_faceBanner .wixAds_logoDot {
                  position: static;
                  margin: 0 3px;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_faceBanner .wixAds_emphasis {
                  font-weight: bold;
                  position: relative;
                  top: -6px;
                  }
                  .wixAdsdesktopWADTopContent .wixAds_spacer {
                  line-height: 26px;
                  }
                  .wixAdsdesktopWADTopContent .wixAds_emphasis {
                  color: #ffcc00;
                  }
                  .wixAdsdesktopWADTopContent .wixAds_cap {
                  font-size: 16px;
                  line-height: 1.3em;
                  text-transform: uppercase;
                  }
                  .wixAdsdesktopWADTopContent .wixAds_face {
                  display: block;
                  line-height: 18px;
                  text-align: justify;
                  padding: 0 20px;
                  width: 120px;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_adFootBox {
                  height: 40px;
                  width: 100%;
                  text-align: center;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_siteBanner {
                  background-color: rgba(64, 64, 64, 1);
                  border-radius: 6px 6px 0 0;
                  width: 100%;
                  height: 100%;
                  text-align: center;
                  }
                  .wixAdsdesktopWADBottomContent:hover .wixAds_siteBanner {
                  background-color: #222;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_siteBanner .wixAds_wrapper {
                  padding: 5px 0;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_siteBanner .wixAds_wrapper div {
                  display: inline-block;
                  height: 30px;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_bigMusa {
                  text-indent: -9999px;
                  width: 36px;
                  background-image:
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/wixads/wf_label_static.png);
                  background-repeat: no-repeat;
                  background-position: left bottom;
                  position: relative;
                  top: -19px;
                  }
                  .wixAdsdesktopWADBottomContent.wixAds_nativeAndroid .wixAds_bigMusa {
                  overflow: hidden;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_logoDot {
                  text-indent: -9999px;
                  width: 39px;
                  height: 15px;
                  position: relative;
                  top: -4px;
                  margin: 0 5px;
                  background-image:
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/wixads/wf_label_static.png);
                  background-repeat: no-repeat;
                  background-position: right -17px;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_emphasis {
                  color: #ffcc00;
                  font-size: 16px;
                  text-transform: uppercase;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_txt {
                  color: #fff;
                  font-weight: bold;
                  font-size: 15px;
                  }
                  .wixAdsdesktopWADBottomContent .wixAds_siteBanner .wixAds_txt {
                  line-height: 47px;
                  }
                  @media ( orientation : landscape) {
                  .wixAdsmobileAd {
                  display: none;
                  }
                  }
                  @media ( orientation : landscape) {
                  .wixAds_wixAds[data-state~="mobile"] {
                  display: none;
                  }
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$mobileAppBanner">
                  .mobileAppBannercontainer {
                  position: relative;
                  overflow: hidden;
                  z-index: 99;
                  height: 70px;
                  background-color: #f2f2f2;
                  border-bottom: 1px solid #d7d7d7;
                  }
                  .mobileAppBannercontainer>div {
                  float: left;
                  margin-left: 10px;
                  }
                  .mobileAppBannerclose>a {
                  color: #777777;
                  line-height: 70px;
                  font-family: Helvetica, sans-serif, Arial;
                  font-size: 14px;
                  }
                  .mobileAppBannericonbody {
                  width: 40px;
                  height: 40px;
                  margin-top: 15px;
                  border-radius: 10px;
                  display: inline-block;
                  background-size: cover;
                  background-position: center;
                  background-repeat: no-repeat;
                  }
                  .mobileAppBannercontainer[data-device~="android"] .mobileAppBannericonbody
                  {
                  border-radius: 3px;
                  }
                  .mobileAppBannertext {
                  color: #0d0d0d;
                  line-height: 20px;
                  margin-top: 15px;
                  }
                  .mobileAppBannerappname {
                  font-family: "Helvetica Neue", Helvetica, sans-serif, Arial;
                  font-size: 13px;
                  font-weight: 600;
                  overflow: hidden;
                  white-space: nowrap;
                  text-overflow: ellipsis;
                  max-width: 175px;
                  }
                  .mobileAppBannertagline {
                  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", Helvetica,
                  sans-serif-light, Arial;
                  font-size: 13px;
                  font-weight: normal;
                  }
                  .mobileAppBannergetlink {
                  color: #3798eb;
                  line-height: normal;
                  font-family: "HelveticaNeue-Medium", Helvetica, sans-serif, Arial;
                  font-weight: 600;
                  font-size: 13px;
                  }
                  .mobileAppBannercontainer[data-device~="apple"] .mobileAppBannergetlink
                  {
                  font-weight: 500;
                  }
                  .mobileAppBannerbaselinehack {
                  height: 14px;
                  line-height: 0px;
                  display: inline-block;
                  }
                  .mobileAppBannerget {
                  border: 1px solid #3798eb;
                  border-radius: 3px;
                  padding: 3px 10px;
                  display: inline-block;
                  }
                  @media all and (max-width: 400px) and (min-width: 0px) {
                  .mobileAppBannerget {
                  position: absolute;
                  top: 22.5px;
                  right: 10px;
                  float: none !important;
                  }
                  }
                  @media all and (min-width: 401px) {
                  .mobileAppBannerget {
                  margin-top: 22.5px;
                  margin-left: 30px !important;
                  }
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$deadComp">
                  .deadComp {
                  background: transparent;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$siteBackground">
                  .siteBackground {
                  width: 100%;
                  position: absolute;
                  }
                  .siteBackgroundbgBeforeTransition {
                  position: absolute;
                  top: 0;
                  }
                  .siteBackgroundbgAfterTransition {
                  position: absolute;
                  top: 0;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$loginDialog">
                  .loginDialog {
                  position: fixed;
                  width: 100%;
                  height: 100%;
                  z-index: 99;
                  font-family: Arial, sans-serif;
                  font-size: 1em;
                  color: #9C9C9C;
                  }
                  .loginDialogblockingLayer {
                  background-color: rgba(85, 85, 85, 0.75);
                  position: fixed;
                  top: 0;
                  right: 0;
                  bottom: 0;
                  left: 0;
                  visibility: visible;
                  zoom: 1;
                  overflow: auto;
                  }
                  .loginDialogdialog {
                  background-color: rgba(170, 170, 170, 0.7);
                  width: 455px;
                  position: fixed;
                  padding: 20px;
                  }
                  .loginDialog_wrapper {
                  background-color: rgba(255, 255, 255, 1);
                  padding: 45px 40px 0 40px;
                  }
                  .loginDialogxButton {
                  position: absolute;
                  top: -14px;
                  right: -14px;
                  cursor: pointer;
                  background: transparent
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/viewer_login_sprite.png)
                  no-repeat right top;
                  height: 30px;
                  width: 30px;
                  }
                  .loginDialogxButton:hover {
                  background-position: right -80px;
                  }
                  .loginDialogheader {
                  padding-bottom: 25px;
                  line-height: 30px;
                  }
                  .loginDialogfavIcon {
                  float: left;
                  margin: 7px 7px 0 0;
                  width: 16px;
                  height: 16px;
                  }
                  .loginDialogtitle {
                  font-size: 20px;
                  font-weight: bold;
                  color: #555555;
                  }
                  .loginDialog[data-state~="mobile"] {
                  position: absolute;
                  width: 100%;
                  height: 100%;
                  z-index: 99;
                  font-family: Arial, sans-serif;
                  font-size: 1em;
                  color: #9C9C9C;
                  top: 0;
                  }
                  .loginDialog[data-state~="mobile"] .loginDialogheader {
                  padding-bottom: 10px;
                  line-height: 30px;
                  }
                  .loginDialog[data-state~="mobile"] .loginDialogfavIcon {
                  display: none;
                  }
                  .loginDialog[data-state~="mobile"] .loginDialogtitle {
                  font-size: 14px;
                  }
                  .loginDialog[data-state~="mobile"] .loginDialogdialog {
                  width: 260px;
                  padding: 10px;
                  position: absolute;
                  }
                  .loginDialog[data-state~="mobile"] .loginDialog_footer {
                  margin-top: 0;
                  padding-bottom: 10px;
                  }
                  .loginDialog[data-state~="mobile"] .loginDialogcancel {
                  font-size: 14px;
                  line-height: 30px;
                  }
                  .loginDialog[data-state~="mobile"] .loginDialog_wrapper {
                  padding: 14px 12px 0 12px;
                  }
                  .loginDialog[data-state~="mobile"] .loginDialogsubmitButton {
                  height: 30px;
                  width: 100px;
                  font-size: 14px;
                  }
                  .loginDialog_forgot {
                  text-align: left;
                  font-size: 12px;
                  }
                  .loginDialog_forgot a {
                  color: #0198ff;
                  border-bottom: 1px solid #0198ff;
                  }
                  .loginDialog_forgot a:hover {
                  color: #0044ff;
                  border-bottom: 1px solid #0044ff;
                  }
                  .loginDialog_error {
                  font-size: 12px;
                  color: #d74401;
                  text-align: right;
                  }
                  .loginDialog_footer {
                  width: 100%;
                  margin-top: 27px;
                  padding-bottom: 40px;
                  }
                  .loginDialogcancel {
                  color: #9C9C9C;
                  font-size: 18px;
                  text-decoration: underline;
                  line-height: 36px;
                  }
                  .loginDialogcancel:hover {
                  color: #9c3c3c;
                  }
                  .loginDialogpasswordInput label {
                  font-size: 14px;
                  }
                  .loginDialogpasswordInput label[data-type="password"] {
                  font-size: 14px;
                  line-height: 30px;
                  height: 30px;
                  }
                  .loginDialogsubmitButton {
                  float: right;
                  cursor: pointer;
                  border: solid 2px #0064a8;
                  height: 36px;
                  width: 143px;
                  background: transparent
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/viewer_login_sprite.png)
                  repeat-x right -252px;
                  color: #ffffff;
                  font-size: 24px;
                  font-weight: bold;
                  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.5);
                  }
                  .loginDialogsubmitButton:hover {
                  background-position: right -352px;
                  border-color: #004286;
                  }
                  .loginDialog[data-state="normal"] .loginDialogerror {
                  display: none;
                  }
                  .loginDialog[data-state="error"] .loginDialogerror {
                  display: block;
                  font-size: 12px;
                  color: #d74401;
                  text-align: right;
                  }
                  .loginDialog[data-state="error"] .loginDialogpasswordInput {
                  border-color: #d74401;
                  }
                  .loginDialogpasswordInput {
                  font-size: 1em;
                  }
                  .loginDialogpasswordInput label {
                  float: none;
                  font-size: 17px;
                  line-height: 25px;
                  color: #585858;
                  }
                  .loginDialogpasswordInput[data-state~="mobile"] label {
                  float: none;
                  font-size: 14px;
                  line-height: 20px;
                  color: #585858;
                  }
                  .loginDialogpasswordInputinput {
                  padding: 0 15px;
                  width: 100%;
                  height: 42px;
                  font-size: 19px;
                  line-height: 42px;
                  color: #0198ff;
                  margin: 0 -3px;
                  background: transparent
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/viewer_login_sprite.png)
                  repeat-x right -170px;
                  border: solid 1px #a1a1a1;
                  box-sizing: border-box;
                  }
                  .loginDialogpasswordInput[data-state~="mobile"] .loginDialogpasswordInputinput
                  {
                  padding: 0 15px;
                  width: 100%;
                  height: 30px;
                  font-size: 14px;
                  line-height: 30px;
                  color: #0198ff;
                  margin: 0 -3px;
                  background: transparent
                  url(//static.parastorage.com/services/skins/2.1212.0/images/wysiwyg/core/themes/base/viewer_login_sprite.png)
                  repeat-x right -170px;
                  border: solid 1px #a1a1a1;
                  box-sizing: border-box;
                  }
                  .loginDialogpasswordInputinput[data-type="password"] {
                  font-size: 38px;
                  }
                  .loginDialogpasswordInput[data-state~="mobile"] .loginDialogpasswordInputinput[data-type="password"]
                  {
                  font-size: 14px;
                  }
                  .loginDialogpasswordInputerrorMessage {
                  display: block;
                  font-size: 12px;
                  color: #d74401;
                  text-align: right;
                  height: 15px;
                  }
                  .loginDialogpasswordInput:not ([data-state~="invalid"] )
                  .loginDialogpasswordInputerrorMessage {
                  visibility: hidden;
                  }
                  .loginDialogpasswordInput[data-state~="invalid"] .loginDialogpasswordInputerrorMessage
                  {
                  visibility: visible;
                  }
                  .loginDialogpasswordInput[data-state~="invalid"] input {
                  border-color: #d74401;
                  }
                  .loginDialogpasswordInput[data-state~="invalid"] .loginDialogpasswordInputinput
                  {
                  border-color: red;
                  }
               </style>
               <style type="text/css" data-reactid=".0.0.$testStyle">
                  .testStyles {
                  position: absolute;
                  display: none;
                  z-index: 7
                  }.btnsubmit{
                  background-color: black;
                  border: 0 none;
                  color: white;
                  margin-left: -128px;
                  margin-top: 53px !important;
                  width: 400px;
                  height: 45px
                  }
                  #company
                  {
                  width: 169px!important;
                  }
                  #city{
                  width: 169px !important;
                  }
                  #city{
                  width: 169px !important;
                  }
                  #court{
                  width: 169px !important;
                  }
               </style>
               <div class="testStyles" data-reactid=".0.0.o"></div>
               <style type="text/css" data-reactid=".0.0.$uploadedFonts"></style>
               <div
                  style="overflow: hidden; visibility: hidden; max-height: 0; max-width: 0; position: absolute;"
                  data-reactid=".0.0.$fontsLoader">
                  <style data-reactid=".0.0.$fontsLoader.0">
                     .font-ruler-content::after {
                     content: "@#$%%^&*~IAO"
                     }
                     .formlable{
                     margin-right: 10px;
                     float: left;
                     width: 200px;
                     font-size:18px;
                     }
                     .headertitle{
                     font-size: large;
                     margin-bottom: 20px;
                     margin-left: 92px;
                     }
                     textarea, input, select {
                     box-sizing: border-box;
                     font-family: Helvetica,Arial,sans-serif;
                     margin: 8px !important;
                     }
                  </style>
               </div>
            </div>
					   <div id="SITE_BACKGROUND_current_mainPage"
						  style="top: 0; height: 100%; width: 100%; background-color: rgba(255, 255, 255, 1); display:; position: fixed;"
						  class="siteBackgroundcurrent"
						  data-reactid=".0.$SITE_BACKGROUND.$mainPage">
						  <div
							 data-image-css="{&quot;backgroundSize&quot;:&quot;&quot;,&quot;backgroundPosition&quot;:&quot;&quot;,&quot;backgroundRepeat&quot;:&quot;&quot;}"
							 id="SITE_BACKGROUND_currentImage_mainPage"
							 style="position: absolute; top: 0px; height: 100%; width: 100%;"
							 data-type="bgimage" class="siteBackgroundcurrentImage"
							 data-reactid=".0.$SITE_BACKGROUND.$mainPage.$background_currentImage_fixed"></div>
						  <div
							 style="position: relative; min-width: 0px; min-height: 0px; top: 0px; left: 0px;"
							 id="SITE_BACKGROUNDcurrentVideo"
							 class="siteBackgroundcurrentVideo"
							 data-reactid=".0.$SITE_BACKGROUND.$mainPage.1"></div>
						  <div id="SITE_BACKGROUND_currentOverlay_mainPage"
							 style="position: absolute; top: 0; width: 100%; height: 100%; background-attachment: fixed;"
							 class="siteBackgroundcurrentOverlay"
							 data-reactid=".0.$SITE_BACKGROUND.$mainPage.2"></div>
					   </div>
					</div>
					<div class="SITE_ROOT" id="SITE_ROOT"
					   style="width: 980px; padding-bottom: 41px;"
					   data-reactid=".0.$SITE_ROOT">
					   <div id="SITE_STRUCTURE"
						  style="width: 100%; position: static; top: 0px; height: 100%;"
						  data-reactid=".0.$SITE_ROOT.$desktop_siteRoot">
						  <div
							 style="width: 100%; position: absolute; top: 0px; height: 125px; left: 0px;"
							 class="s0" data-state=" " id="SITE_HEADER"
							 data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER">

							 <div id="SITE_HEADERcenteredContent" class="s0centeredContent"
								data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1">
								<div id="SITE_HEADERbg" class="s0bg"
								   data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.0"></div>
								<div id="SITE_HEADERinlineContent" class="s0inlineContent"
								   data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1">
								   <div
									  style="left: 5px; width: 40%; position: absolute; top: 0px;"
									  class="s1" id="SITE_STRUCTURE_WRichText_0"
									  data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$SITE_STRUCTURE_WRichText_0">
									  <image src="/images/logo.png"></image>
								   </div>
								   <div
									  style="left: 148px; width: 40%; position: absolute; top: 23px;"
									  class="s1" id="SITE_STRUCTURE_WRichText_0"
									  data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$SITE_STRUCTURE_WRichText_0">
									  <h1 class="font_0">
										 SHEETAL Gelda & SOURABH Gelda Advocate
									  </h1>
								   </div>
								   <div
									  style="left: 155px; width: 120px; position: absolute; top: 63px;"
									  class="s1" id="WRchTxt7"
									  data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$WRchTxt7">
									  <p style="line-height: 1.3em;" class="font_8">
										 <span style="line-height: 1.3em;"></span>
									  </p>
								   </div>
								   <div data-dropmode="dropDown" id="DrpDwnMn0"
									  data-menuborder-y="0" data-menubtn-border="0"
									  data-ribbon-els="0" data-label-pad="0" data-ribbon-extra="0"
									  style="left: 600px; width: 678px; position: absolute; top: 21px; height: 55px;"
									  class="s2" data-state="right notMobile"
									  data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0">
									  <div
										 style="display: inline-block; text-align: right; overflow: visible; height: 55px;"
										 id="DrpDwnMn0itemsContainer" class="s2itemsContainer"
										 data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0">
										 <a data-original-gap-between-text-and-btn="22"
											style="display: inherit; color: grey; width: 75px; height: 55px; position: relative; box-sizing: border-box; overflow: visible;"
											data-listposition="center"
											href="/welcome" target="_self"
											class="s2repeaterButton"
											data-state="menu selected idle link notMobile"
											id="DrpDwnMn00"
											data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$0">
											<div
											   class="s2repeaterButton_gapper"
											   data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$0.0">
											   <div style="text-align: left;" id="DrpDwnMn00bg"
												  class="s2repeaterButtonbg"
												  data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$0.0.0">
												  <p style="text-align: left; line-height: 55px;"
													 id="DrpDwnMn00label" class="s2repeaterButtonlabel"
													 data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$0.0.0.0">HOME</p>
											   </div>
											</div>
										 </a>
									  </div>

								   </div>
								</div>
							 </div>
						  </div>
                  <div
                     style="left: 0px; width: 980px; position: absolute; top: 0px; height: 1142px;"
                     class="s7" id="SITE_PAGES"
                     data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES">
                     <div
                        style="left: 0px; width: 980px; position: absolute; top: 0px; height: 100%;"
                        class="s8" id="mainPage"
                        data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$mainPage">
                        <div id="mainPagebg" class="s8bg"
                           data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$mainPage.0"></div>
                        <div id="mainPageinlineContent" class="s8inlineContent"
                           style="position: absolute; top: 156px; width: 100%; left: 70px; height: 80%;"
                           data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$mainPage.1">
                           <%
                              List courts=(List)request.getAttribute("courts");
                              List companys=(List)request.getAttribute("companys");
                              List citys=(List)request.getAttribute("citys");
                              %>
                           <form id="case" method="POST" >
                              <H3 class="headertitle"> Add Your Case Detail</H3>
                              <ul class="ul-no-bult">
                                 <li><label class="formlable s2repeaterButton"> FileNo</label> <input type="text" name="FileNo" id="FileNo"/></li>
                                 <li><label class="formlable s2repeaterButton"> CaseNo</label> <input type="text" name="CaseNo" id="CaseNo"/></li>
                                 <li><label class="formlable s2repeaterButton"> Case Title</label> <input type="text" name="AgainstClient" id="AgainstClient"/></li>
                                 <li><label class="formlable s2repeaterButton"> Advocate</label> <input type="text" name="Advocate" id="Advocate" /></li>
                                 <li><label class="formlable s2repeaterButton"> Stage</label> <input type="text" name="Stage" id="Stage"/></li>
                                 <li><label class="formlable s2repeaterButton"> Description</label> <input type="textarea" rows="4" cols="50" name="Descripation" id="Descripation"/></li>
                                 <li><label class="formlable s2repeaterButton"> Next Date</label> <input type="text" placeholder="dd/MM/YYYY" name="Next_Date" id="Next_Date"/></li>
                                 <li><label class="formlable s2repeaterButton"> Previous Date</label> <input type="text" placeholder="dd/MM/YYYY" name="Prev_Date" id="Prev_Date"/></li>
                                 <li><label class="formlable s2repeaterButton"> Court</label> <select id="court" name="court">
                                    <%
                                       Iterator it=courts.iterator();
                                       while(it.hasNext()){
                                        Object o=it.next();
                                        Court c=(Court)o;
                                        out.println("<option value="+c.getId()+">"+c.getName()+"</option>");
                                       }%>
                                    </select>
                                 </li>
                                 <li><label class="formlable s2repeaterButton"> company</label> <select id="company" name="company">
                                    <%Iterator Companyiterator=companys.iterator();
                                       while(Companyiterator.hasNext()){
                                       Object o=Companyiterator.next();
                                       Company c=(Company)o;
                                       out.println("<option value="+c.getId()+">"+c.getName()+"</option>");
                                       }%>
                                    </select>
                                 </li>
                                 <li><label class="formlable s2repeaterButton">city</label> <select name="city" id="city">
                                    <%
                                       Iterator Cityiterator=citys.iterator();
                                       while(Cityiterator.hasNext()){
                                       Object o=Cityiterator.next();
                                       City c=(City)o;
                                       out.println("<option value="+c.getId()+">"+c.getName()+"</option>");
                                       }%>
                                    </select>
                                 <li >
                                 <input type="submit" class="btnsubmit" value="submit" id="sbt" name="sbt"/></li>
                              </ul>
                           </form>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="s0_bg_footer" style="width: 100%!important;height: 10% " id="footer">
               <table style="width:100%">
                  <tr style="width:100%">
                     <td style="width:100%;text-align: right;">
                        <span style="text-align: right"; class="color_12">FOLLOW US:</span>
                        <img data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_FOOTER.1.1.$LnkBr1.0.1.0.0.$image" style="width:20px;height:20px;object-fit:cover;" src="/static/images/89b1d2497b29ccbb7d37be1ec6ef0052.png" alt="" id="LnkBr1i120mgimageimage">
                     </td>
                  </tr>
               </table>
            </div>
         </div>
      </div>
   </body>
</html>