<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>
<%!
Connection con;
	Statement st,st1;
	java.sql.ResultSet rs,rs1;%>
	
	<%
	try
	{
		con=DConnection.connect();
		String uername=(String)session.getAttribute("username");
		st=con.createStatement();
		String qry="select FIRST_NAME,QUALIFICATION,EXPERIANCE,INTERESTED_SUBJECTS,EMAIL,PHNO from faculty";
		rs=st.executeQuery(qry);
		
	 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style4 {font-size: 16px}
.style7 {font-size: 16px; color: #0000FF; }
.style9 {font-size: 18px}
.style11 {font-size: 18px; color: #0000FF; }
.style12 {	font-family: "Courier New", Courier, monospace;
	font-size: 24px;
	color: #330000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<form>
<div align="center">
  <table width="906" height="582" border="0" cellpadding="0" cellspacing="0" bordercolor="#9BD439">
    <tr>
      <td height="143" colspan="9"><img src="images/header.jpg" width="907" height="143" /></td>
    </tr>
    <tr>
      <td width="67" height="26" bgcolor="#9BD439"><div align="center" class="style7"><span class="style9"><a href="index.html">Home</a></span></div></td>
      <td width="67" bgcolor="#9BD439"><div align="center" class="style4"><a href="admin.html" class="style9"></a><a href="signin.html" class="style9">Sign In </a></div></td>
      <td width="76" bgcolor="#9BD439"><div align="center" class="style7"><a href="signin.html" class="style9"></a><a href="signup.html" class="style9">Sign Up</a></div></td>
      <td width="84" bgcolor="#9BD439"><div align="center" class="style7"><a href="signup.html" class="style9"></a><a href="infra.html" class="style9">Infrastructure</a></div></td>
      <td width="134" bgcolor="#9BD439"><div align="center" class="style7"><a href="infra.html" class="style9"></a><a href="admission.html" class="style9">Admission</a></div></td>
      <td width="115" bgcolor="#9BD439"><div align="center" class="style7"><a href="admission.html" class="style9"></a><a href="fee.html" class="style9">Fee Structure</a></div></td>
      <td width="144" bgcolor="#9BD439"><div align="center"><a href="fee.html" class="style9"></a><a href="faculty.jsp" class="style9">Faculty</a></div></td>
      <td width="99" bgcolor="#9BD439"><div align="center"><a href="faculty.jsp" class="style9"></a><a href="contact.html" class="style9">Contact Us</a></div></td>
      <td width="120" bgcolor="#9BD439"><div align="center"><a href="signout.html">Sign Out</a></div></td>
    </tr>
    
    <tr>
      <td height="404" colspan="9" bgcolor="#9BD439"><div align="center">
        <table width="100%" height="349" border="1">
           <tr>
                  <td colspan="8"><div align="center" class="style12">Faculty Information </div></td>
                </tr>
                <tr>
                  <td width="15%"><div align="center">Name </div></td>
                  <td width="14%"><div align="center">Qualification</div></td>
                  <td width="14%"><div align="center">Experiance </div></td>
                  <td width="9%"><div align="center">Interested Subjects</div></td>
                  <td width="17%"><div align="center">Email</div></td>
                  
                  <td width="16%"><div align="center">Phone No. </div></td>
                </tr>
                <%while(rs.next())
                {
                
                 %>
                <tr>
                  <td><div align="center"><%=rs.getString(1) %>&nbsp;</div></td>
                  <td><div align="center"><%=rs.getString(4) %>&nbsp;</div></td>
                  <td><div align="center"><%=rs.getString(3) %>&nbsp;</div></td>
                  <td><div align="center"><%=rs.getString(5) %>&nbsp;</div></td>
                  <td><div align="center"><%=rs.getString(2) %>&nbsp;</div></td>
                  <td><div align="center"><%=rs.getString(6) %>&nbsp;</div></td>
                  
                </tr>
                <%}
                }
                catch(Exception e){
                e.printStackTrace();
                }
                
                 %>
              </table></div></td></tr></table></div></form>
</body>
</html>