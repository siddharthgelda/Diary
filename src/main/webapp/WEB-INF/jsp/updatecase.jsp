<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>

    <%@ page import="com.ibm.internal.assignment.entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href=
'https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'
          rel='stylesheet'>

    <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" >
    </script>

    <script src=
"https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" >
    </script>
<link id="font_latin" href="/css/page.css" rel="stylesheet">

<title>Search case</title>
				<style type="text/css" data-reactid=".0.0.$testStyle">
.testStyles {
	position: absolute;
	display: none;
	z-index: 7
}
</style>
</head>
<body>
	<div class="testStyles" data-reactid=".0.0.o"></div>
    				<style type="text/css" data-reactid=".0.0.$uploadedFonts"></style>
    				<div
    					style="overflow: hidden; visibility: hidden; max-height: 0; max-width: 0; position: absolute;"
    					data-reactid=".0.0.$fontsLoader">
    					<style data-reactid=".0.0.$fontsLoader.0">
    .font-ruler-content::after {
    	content: "@#$%%^&*~IAO"
    }
    </style>
    				</div>
    			</div>
    			<div id="SITE_BACKGROUND" class="siteBackground"
    				style="position: absolute; top: 0px; height: 100%; width: 100%;"
    				data-reactid=".0.$SITE_BACKGROUND">
    				<div id="SITE_BACKGROUND_previous_" class="siteBackgroundprevious"
    					data-reactid=".0.$SITE_BACKGROUND.$noPrev">
    					<div id="SITE_BACKGROUND_previousImage_"
    						class="siteBackgroundpreviousImage"
    						data-reactid=".0.$SITE_BACKGROUND.$noPrev.0"></div>
    					<div id="SITE_BACKGROUNDpreviousVideo"
    						class="siteBackgroundpreviousVideo"
    						data-reactid=".0.$SITE_BACKGROUND.$noPrev.1"></div>
    					<div id="SITE_BACKGROUND_previousOverlay_"
    						class="siteBackgroundpreviousOverlay"
    						data-reactid=".0.$SITE_BACKGROUND.$noPrev.2"></div>
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
    						style="width: 100%; position: absolute; top: 0px; height: 96px; left: 0px;"
    						class="s0" data-state=" " id="SITE_HEADER"
    						data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER">
    						<div style="width: 1349px; left: -185px;"
    							id="SITE_HEADERscreenWidthBackground"
    							class="s0screenWidthBackground"
    							data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.0">
    							<div class="s0_bg"
    								data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.0.0"></div>
    						</div>
    						<div id="SITE_HEADERcenteredContent" class="s0centeredContent"
    							data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1">
    							<div id="SITE_HEADERbg" class="s0bg"
    								data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.0"></div>
    							<div id="SITE_HEADERinlineContent" class="s0inlineContent"
    								data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1">
    								<div
    									style="left: 21px; width: 295px; position: absolute; top: 23px;"
    									class="s1" id="SITE_STRUCTURE_WRichText_0"
    									data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$SITE_STRUCTURE_WRichText_0">
    									<h1 class="font_0">
    										<a href="http://geldasiddharth.wixsite.com/siddu"
    											target="_self">Gelda Advocate</a>
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
    									style="left: 300px; width: 678px; position: absolute; top: 21px; height: 55px;"
    									class="s2" data-state="right notMobile"
    									data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0">
    									<div
    										style="display: inline-block; text-align: right; overflow: visible; height: 55px;"
    										id="DrpDwnMn0itemsContainer" class="s2itemsContainer"
    										data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0">
    										<a data-original-gap-between-text-and-btn="22"
    											style="display: inherit; color: grey; width: 75px; height: 55px; position: relative; box-sizing: border-box; overflow: visible;"
    											data-listposition="center"
    											href="http://geldasiddharth.wixsite.com/siddu" target="_self"
    											class="s2repeaterButton"
    											data-state="menu selected idle link notMobile"
    											id="DrpDwnMn00"
    											data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$0"><div
    												class="s2repeaterButton_gapper"
    												data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$0.0">
    												<div style="text-align: left;" id="DrpDwnMn00bg"
    													class="s2repeaterButtonbg"
    													data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$0.0.0">
    													<p style="text-align: left; line-height: 55px;"
    														id="DrpDwnMn00label" class="s2repeaterButtonlabel"
    														data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$0.0.0.0">HOME</p>
    												</div>
    											</div></a><a data-original-gap-between-text-and-btn="22"
    											style="display: inherit; color: grey; width: 68px; height: 55px; position: relative; box-sizing: border-box; overflow: visible;"
    											data-listposition="center"
    											href="http://geldasiddharth.wixsite.com/siddu/firm"
    											target="_self" class="s2repeaterButton"
    											data-state="menu  idle link notMobile" id="DrpDwnMn01"
    											data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$1"><div
    												class="s2repeaterButton_gapper"
    												data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$1.0">
    												<div style="text-align: left;" id="DrpDwnMn01bg"
    													class="s2repeaterButtonbg"
    													data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$1.0.0">
    													<p style="text-align: left; line-height: 55px;"
    														id="DrpDwnMn01label" class="s2repeaterButtonlabel"
    														data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$1.0.0.0">FIRM</p>
    												</div>
    											</div></a><a data-original-gap-between-text-and-btn="22"
    											style="display: inherit; color: grey; width: 138px; height: 55px; position: relative; box-sizing: border-box; overflow: visible;"
    											data-listposition="center"
    											href="http://geldasiddharth.wixsite.com/siddu/practice_areas"
    											target="_self" class="s2repeaterButton"
    											data-state="menu  idle link notMobile" id="DrpDwnMn02"
    											data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$2"><div
    												class="s2repeaterButton_gapper"
    												data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$2.0">
    												<div style="text-align: left;" id="DrpDwnMn02bg"
    													class="s2repeaterButtonbg"
    													data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$2.0.0">
    													<p style="text-align: left; line-height: 55px;"
    														id="DrpDwnMn02label" class="s2repeaterButtonlabel"
    														data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$2.0.0.0">PRACTICE
    														AREAS</p>
    												</div>
    											</div></a><a data-original-gap-between-text-and-btn="22"
    											style="display: inherit; color: grey; width: 97px; height: 55px; position: relative; box-sizing: border-box; overflow: visible;"
    											data-listposition="center"
    											href="http://geldasiddharth.wixsite.com/siddu/contact"
    											target="_self" class="s2repeaterButton"
    											data-state="menu  idle link notMobile" id="DrpDwnMn03"
    											data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$3"><div
    												class="s2repeaterButton_gapper"
    												data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$3.0">
    												<div style="text-align: left;" id="DrpDwnMn03bg"
    													class="s2repeaterButtonbg"
    													data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$3.0.0">
    													<p style="text-align: left; line-height: 55px;"
    														id="DrpDwnMn03label" class="s2repeaterButtonlabel"
    														data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$3.0.0.0">CONTACT</p>
    												</div>
    											</div></a><a data-original-gap-between-text-and-btn="22"
    											style="display: inherit; color: grey; width: 120px; height: 55px; position: relative; box-sizing: border-box; overflow: visible;"
    											data-listposition="right"
    											href="http://geldasiddharth.wixsite.com/siddu/book-online"
    											target="_self" class="s2repeaterButton"
    											data-state="menu  idle link notMobile" id="DrpDwnMn04"
    											data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$4"><div
    												class="s2repeaterButton_gapper"
    												data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$4.0">
    												<div style="text-align: left;" id="DrpDwnMn04bg"
    													class="s2repeaterButtonbg"
    													data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$4.0.0">
    													<p style="text-align: left; line-height: 55px;"
    														id="DrpDwnMn04label" class="s2repeaterButtonlabel"
    														data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.$4.0.0.0">BOOK
    														ONLINE</p>
    												</div>
    											</div></a><a data-original-gap-between-text-and-btn="22"
    											style="display: inline-block; box-sizing: border-box; color: grey; height: 0px; overflow: hidden; position: absolute;"
    											data-listposition="right" class="s2repeaterButton"
    											data-state="menu  idle header notMobile"
    											id="DrpDwnMn0__more__"
    											data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.5"><div
    												class="s2repeaterButton_gapper"
    												data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.5.0">
    												<div style="text-align: left;" id="DrpDwnMn0__more__bg"
    													class="s2repeaterButtonbg"
    													data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.5.0.0">
    													<p style="line-height: 55px; text-align: left;"
    														id="DrpDwnMn0__more__label" class="s2repeaterButtonlabel"
    														data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.0.5.0.0.0">More</p>
    												</div>
    											</div></a>
    									</div>
    									<div id="DrpDwnMn0moreButton" class="s2moreButton"
    										data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.1"></div>
    									<div
    										style="visibility: hidden; left: auto; right: 423px; bottom: auto;"
    										data-drophposition="" data-dropalign="right"
    										id="DrpDwnMn0dropWrapper" class="s2dropWrapper"
    										data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.2">
    										<div style="visibility: hidden; left: auto; right: 423px;"
    											id="DrpDwnMn0moreContainer" class="s2moreContainer"
    											data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$SITE_HEADER.1.1.$DrpDwnMn0.2.0"></div>
    									</div>
    								</div>
    							</div>
    						</div>
    					</div>
    					<div
    						style="left: 0px; width: 980px; position: absolute; top: 0px; height: 1142px;margin-top:110px"
    						class="s7" id="SITE_PAGES"
    						data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES">

<%
  List courts=(List)request.getAttribute("courts");
  List companys=(List)request.getAttribute("companys");
  List citys=(List)request.getAttribute("citys");
  String selectCmpId=(String)request.getAttribute("selectedCmdId");
   String selectCtyId=(String)request.getAttribute("selectedCtyId");
   String selectedCourtId=(String)request.getAttribute("selectedCourtId");
   String selectedCaseNo=(String)request.getAttribute("selectedCaseNo");
   String selectedFileNo=(String)request.getAttribute("selectedFileNo");
%>
<%
List<UserDetail> caselist=(List<UserDetail>)request.getAttribute("cases");
%>
<form action="/updatecase" method="get">
<div>
<B>Filters:</B>
<br/>
<br/>
<table>
<tr>
<td>Date
</td>

<td>
<input type="text" name="currentdate"  id="currentdate"/>
  <script>
        $(document).ready(function() {

            $(function() {
                $( "#currentdate" ).datepicker({
                 changeMonth: true,
                 changeYear: true
                });
            });
        })
    </script>
    </td>
    <td>
    Company
    </td>
    <td>
    <select id="companySearch" name="companySearch">
    <option value="">All</option>
       <%Iterator Companyiterator=companys.iterator();

       while(Companyiterator.hasNext()){
    	  Object o=Companyiterator.next();
    	  Company c=(Company)o;
    	  out.println("<option value="+c.getId());
    	  String cmpId=c.getId().toString();
    	  if(cmpId.equals(selectCmpId))
    	  {
    	  out.println("selected ");
    	  }
    	   out.println(">"+c.getName()+"</option>");
      }%>
    </td>
    <td>City</td>
      <td>
        <select id="citySearch" name="citySearch">
        <option value="">All</option>
           <%Iterator cityIterator=citys.iterator();

           while(cityIterator.hasNext()){
        	  Object o=cityIterator.next();
        	  City c=(City)o;
        	  out.println("<option value="+c.getId());
        	  String cityId=c.getId().toString();
        	   if(cityId.equals(selectCtyId))
                  	  {
                  	  out.println("selected ");
                  	  }
        	    out.println(">"+c.getName()+"</option>");
          }%>
        </td>
          <td>Court</td>
              <td>
                <select id="courtSearch" name="courtSearch">
                <option value="">All</option>
                           <%Iterator courtIterator=courts.iterator();

                           while(courtIterator.hasNext()){
                        	  Object o=courtIterator.next();
                        	  Court c=(Court)o;
                        	  out.println("<option value="+c.getId());
                        	  String courtId=c.getId().toString();
                        	   if(courtId.equals(selectedCourtId))
                                  	  {
                                  	  out.println("selected ");
                                  	  }
                        	    out.println(">"+c.getName()+"</option>");
                          }%>
                </td>
                <td>CaseNo </td>
                <td ><input type="text" name="caseNo" id="caseNo" value=<%= selectedCaseNo!=null ?selectedCaseNo:""%>>
                                </td>
                                <td>FileNo</td>
                                                <td><input type="text" name="FileNo" id="FileNo" value=<%= selectedFileNo!=null ? selectedFileNo: "" %>>
                                                                </td>
                                                                <td></td>
    </tr>

<tr>
<td colspan="11" style="text-align:center">
<input type="submit" value="search case" class="search_txt_box"/>
    </td>
<td colspan="2"><input type="submit" value="clear all filters" class="search_txt_box"onclick="clearAllFilters()"/></td>
    </tr>

</table>
</div>
</form>

<table border="1" bordercolor="black">
<tr>
<th>FileNo
</th>
<th>CaseNo
</th>
<th class=case_title>Case Title</th>
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
<td>
<%=caseobj.getFileNo()%>
</td>
<td>
<%=caseobj.getCaseNo()%>
</td>
<td>
<%=caseobj.getAgainstClient()%></td>
<td>
<%=caseobj.getAdvocate()%>
</td>
<td><input type="text" value="
<%=caseobj.getStage()%>" name="stage" id="stage"/>
</td>
<td>
<%=caseobj.getDescripation()%>
</td>
<%

SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
java.util.Date d=new java.util.Date(caseobj.getPrevDate().getTime());
String prevdate=caseobj.getPrevDate()!=null?format.format(d):"";
String nextDate=caseobj.getNextDate()!=null?format.format(caseobj.getNextDate()):"";
%>
<td><%=prevdate%>
</td>
<td><input type="text" value=
<%=nextDate%>  name="nextdate" id="nextdate<%= caseobj.getId()%>"  class="nxtDate<%= caseobj.getId()%>"/>
</td>
<td>
<%=caseobj.getCourt().getName()%>
</td>
<td>
<%=caseobj.getCompany().getName()%></td>
<td>
<%=caseobj.getCity().getName()%></td>
<td>
<%=caseobj.getUser().getName()+" "+caseobj.getUser().getLastName()%></td>
<td>
<%=caseobj.getUser().getMobileNo()+"/"+caseobj.getUser().getLandlineNumber()%></td>
<td>
<%=caseobj.getUser().getAddress()%></td>
<td><input type="hidden"  value="<%= caseobj.getId()%>" name="id" id="id"/><input type="submit" value="update" name="update" /></td>

</tr>
</form>
<script>
            $(document).ready(function() {

                $(function() {
                    $( "#nextdate<%= caseobj.getId()%>" ).datepicker({
                     changeMonth: true,
                     changeYear: true
                    });
                });
            })
        </script>
<%
}}
%>

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
<script>
function clearAllFilters() {
 alert("clear");
document.getElementsByName("caseNo").value="";
document.getElementsByName("FileNo").value="";
}
</script>
	</body>
	</html>
