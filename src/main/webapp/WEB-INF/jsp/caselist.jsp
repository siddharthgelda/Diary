<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    
    <%@ page import="com.ibm.internal.assignment.entity.*" %>

<!DOCTYPE html>
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

<%
  List courts=(List)request.getAttribute("courts");
  List companys=(List)request.getAttribute("companys");
  List citys=(List)request.getAttribute("citys");
  %>
<%
List<UserDetail> caselist=(List<UserDetail>)request.getAttribute("cases");
%>
<table border="1"  width="100%" style="width: 100%;margin-top: 40px;text-align: center;">
<tr>
<th>FileNo
</th>
<th>CaseNo
</th>
<th>Case Title</th>
<th>Advocate
</th>
<th>Stage
</th>
<th>Description
</th>
<th>Previous Date</th>
<th>Next Date
</th>

<th>Court
</th>
<th>Company</th>
<th>City</th>
<th>Client name</th>
<th>Mobile Number</th>
<th>Address</th>
</tr>

<%
if(caselist!=null){
Iterator caselistIterator=caselist.iterator();

while(caselistIterator.hasNext())
{
	UserDetail caseobj=(UserDetail)caselistIterator.next();
%>
<tr>
<tr>
<td><%=caseobj.getFileNo() %>
</td>
<td><%=caseobj.getCaseNo() %>
</td>
<td><%=caseobj.getAgainstClient() %></td>
<td><%=caseobj.getAdvocate() %>
</td>
<td><%=caseobj.getStage() %>
</td>
<td><%=caseobj.getDescripation() %>
</td>
<%

SimpleDateFormat format = new SimpleDateFormat("dd/MM/YYYY");
String prevdate=caseobj.getPrevDate()!=null ?format.format(caseobj.getPrevDate()): "";

%>
<td><%=prevdate%>
</td>
<%
String nextdate=caseobj.getNextDate()!=null?format.format(caseobj.getNextDate()):"";
%>
<td><%=nextdate%>
</td>

<td><%=caseobj.getCourt().getName() %>
</td>
<td><%=caseobj.getCompany().getName() %></td>
<td><%=caseobj.getCity().getName() %></td>
<td><%=caseobj.getUser().getName()+" "+caseobj.getUser().getLastName()%></td>
<td><%=caseobj.getUser().getMobileNo()+"/"+caseobj.getUser().getLandlineNumber() %></td>
<td><%=caseobj.getUser().getAddress()%></td>
</tr>
	<%
}}
%>
	</table>


	</body>
	</html>
	