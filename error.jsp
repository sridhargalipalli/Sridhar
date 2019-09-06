<%@page import="com.ecw.macra.mips.common.util.HelpUtil"%>
<%@page import="com.ecw.macra.mips.common.util.MacraConstants"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>eClinicalWorks</title>
<link rel="stylesheet" href="/mobiledoc/jsp/webemr/css/bootstrap.min.css">
<link rel="stylesheet" href="/mobiledoc/jsp/macra/mips/common/css/bootstrap.min.css">
        <link rel="stylesheet" href="/mobiledoc/jsp/macra/mips/common/css/main-webemr.css">
        
<script type="text/javascript" src="/mobiledoc/jsp/macra/mips/common/js/vendor/jquery-1.11.0.min.js"></script>
</head>
<body>

<%
HelpUtil psUtilHelpJsp = new HelpUtil();
int nTrUserId = psUtilHelpJsp.toInt(request.getParameter("TrUserId"));
int selectedTab=psUtilHelpJsp.toInt(request.getParameter(MacraConstants.MACRA_MIPS_SELECTED_TAB));
%>
<!-- <TABLE>
	<TR>
 	   <TD ALIGN="left" style="font-family:Arial;font-size:70%">
 	   Only Admin or Providers can access...!!!
 	   <br>
 	   <a href="javascript:void(0)" onclick="cancelform()">
		<img BORDER="0" src="\mobiledoc\jsp\catalog\Images\WebReportHome.bmp">RETURN TO REPORTS CONSOLE </a></TD>
       </TR>
</TABLE> -->
 <div class="col-md-12 error-bg nopadding"
 <%
  if((!MacraConstants.MACRA_MIPS_IS_PRACTICE_2018_MIPS_PROGRAM_ENROLLMENT) && selectedTab==MacraConstants.MACRA_MIPS_SUBMISSION_TAB){
	%>
	STYLE=" height: -webkit-fill-available !important;"
	<% 
 }
 %>
 >
        	<div class="text-center">
            	<!-- <img src="/mobiledoc/jsp/webemr/img/access-denied.png" class="center-block img-responsive error-ty" alt="icon"> -->
            	<img src="/mobiledoc/jsp/macra/mips/common/images/access-denied.png" class="center-block img-responsive error-ty" alt="icon">
            	<% 
            	
            	if((!MacraConstants.MACRA_MIPS_IS_PRACTICE_2018_MIPS_PROGRAM_ENROLLMENT) && selectedTab==MacraConstants.MACRA_MIPS_SUBMISSION_TAB){ %>
            		<i>
            		<p class="sb-txt mt20">MIPS Submission page is not enabled since your practice is not signed up for 2018 MIPS Submission Services.</p>
            		<p class="sb-txt mt20"></p>
            		<p class="sb-txt mt20">Now, you can submit All three categories Data to CMS through eClinicalWorks. </p>
            		<p class="sb-txt mt20">Quality, </p>
            		<p class="sb-txt mt20">Promoting Interoperability (PI),</p>
            		<p class="sb-txt mt20">Improvement Activities (IA).</p>
            		<p class="sb-txt mt20"></p>
            		<p class="sb-txt mt20">If you are interested in reporting 2018 MIPS Data to CMS through eClinicalWorks,</p>
            		<p class="sb-txt mt20"></p>
            		<p class="sb-txt mt20">Please contact macra@eclinicalworks.com Or Open a Support Case.</p>
            		<p class="sb-txt mt20"></p>
            		<p class="sb-txt mt20">Thank you.</p>
            		</i>
            		<%
            	}else{
            		%>
            		       	<p class="sb-txt mt20"> Only Admin and Providers are allowed to access...!!!</p>
            		
            		<%
            	}
            	%>
            </div>
    </div>
       <div class="clearfix"></div>
        <div class="col-md-12 white-bg">
        <div class="text-center">
        <img src="/mobiledoc/jsp/macra/mips/common/images/smily-icon.PNG" class="center-block img-responsive mt10" alt="smily">
        <p class="fnt14 mt20">Don’t worry!<br>
You can return to previous page.</p>
      	<button class="btn btn-lblue mt20 mb20" onclick="goBack()"> Back </button>
       </div>
        </div>
</body>
<script type="text/javascript">
	function goBack() {
		window.location.href="/mobiledoc/jsp/catalog/xml/webReportsConsole.jsp?TrUserId="+<%=nTrUserId%>;
	}
	
</script>
</html>