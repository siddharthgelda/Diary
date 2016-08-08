<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    
    <%@ page import="com.ibm.internal.assignment.entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
  List courts=(List)request.getAttribute("courts");
  List companys=(List)request.getAttribute("companys");
  List citys=(List)request.getAttribute("citys");
  %>
<%
List<UserDetail> caselist=(List<UserDetail>)request.getAttribute("cases");
//out.println(caselist.toString());

%>
<form action="" method="get">
Select Date for Case List
<input type="text" name="currentdate"  id="currentdate"/>
<input type="submit" value="search case" placeholder="dd/mm/yyyy"/>

</form>
<table border="1" bordercolor="black">
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
<th> Action</th>
</tr>
<%
if(caselist!=null){
Iterator caselistIterator=caselist.iterator();

while(caselistIterator.hasNext())
{
	UserDetail caseobj=(UserDetail)caselistIterator.next();
%>
<form action="updatecase" method="post">
<tr>
<td><%=caseobj.getFileNo() %>
</td>
<td><%=caseobj.getCaseNo() %>
</td>
<td><%=caseobj.getAgainstClient() %></td>
<td><%=caseobj.getAdvocate() %>
</td>
<td><input type="text" value="<%=caseobj.getStage()%>" name="stage" id="stage"/>
</td>
<td><%=caseobj.getDescripation() %>
</td>
<%

SimpleDateFormat format = new SimpleDateFormat("dd/MM/YYYY");
String prevdate=format.format(caseobj.getPrevDate()); %>
<td><%=prevdate %> 
</td>
<td><input type="text" value=<%=format.format(caseobj.getNextDate()) %>  name="nextdate" id="nextdate"/>
</td>

<td><%=caseobj.getCourt().getName() %>
</td>
<td><%=caseobj.getCompany().getName() %></td>
<td><%=caseobj.getCity().getName() %></td>
<td><%=caseobj.getUser().getName()+" "+caseobj.getUser().getLastName()%></td>
<td><%=caseobj.getUser().getMobileNo()+"/"+caseobj.getUser().getLandlineNumber() %></td>
<td><%=caseobj.getUser().getAddress()%></td>
<td><input type="hidden"  value="<%= caseobj.getId() %>" name="id" id="id"/><input type="submit" value="update" name="update" /></td>

</tr>
</form>
	<%
}}
%>
	</table>
</body>
</html>