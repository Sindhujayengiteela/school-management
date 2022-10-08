<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>

<%!Connection con=null;
	Statement pst,pst1,pst2,pst3,pst4=null;
ResultSet rs,rs1,rs2,rs3,rs4=null;
String password,role,username,id,rollno,name,query;%>


<%
try
	{
		con=DConnection.connect();
	id=request.getParameter("checkbox");

	 

		pst=con.createStatement();
		rs=pst.executeQuery("select * from STUDENTS_COMUNICATE where ROLLNO='"+id+"'");
		while(rs.next())
		{
		      rollno=rs.getString(1);
	          	name=rs.getString(2);
	          	query=rs.getString(3);
		}
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
-->
</style>
</head>

<body>
<form action="showrequestupdateinsert.jsp">
<div align="center">
  <table width="906" height="582" border="0" cellpadding="0" cellspacing="0" bordercolor="#9BD439">
    <tr>
      <td height="143" colspan="9"><img src="images/header.jpg" width="907" height="143" /></td>
    </tr>
    <tr>
      <td width="67" height="26" bgcolor="#9BD439"><div align="center" class="style7"><span class="style9"><a href="index.html">Home</a></span></div></td>
      <td width="67" bgcolor="#9BD439"><div align="center" class="style4"><a href="signin.html" class="style9">Sign In </a></div></td>
      <td width="76" bgcolor="#9BD439"><div align="center" class="style7"><a href="signup.html" class="style9">Sign Up</a></div></td>
      <td width="84" bgcolor="#9BD439"><div align="center" class="style7"><a href="infra.html" class="style9">Infrastructure</a></div></td>
      <td width="134" bgcolor="#9BD439"><div align="center" class="style7"><a href="admission.html" class="style9">Admission</a></div></td>
      <td width="115" bgcolor="#9BD439"><div align="center" class="style7"><a href="fee.html" class="style9">Fee Structure</a></div></td>
      <td width="144" bgcolor="#9BD439"><div align="center"><a href="faculty.jsp" class="style9">Faculty</a></div></td>
      <td width="99" bgcolor="#9BD439"><div align="center"><a href="contact.html" class="style9">Contact Us</a></div></td>
      <td width="120" bgcolor="#9BD439"><div align="center"><a href="signout.html">Sign Out</a></div></td>
    </tr>
    
    <tr>
      <td height="404" colspan="9" bgcolor="#9BD439"><div align="center">
        <table width="100%" height="349" border="1">
            <tr>
              <td width="16%"><p><a href="showreuest.html">Show Request f rom Student </a></p>
                </td>
				<td width="16%"><p><a href="showreuest.html">Show Request from Parent </a></p>
                </td>
              <td width="84%" rowspan="9"><div align="center">
                <table width="349" border="1">
                    <tr>
                      <td width="139">RollNO</td>
                      <td width="194"><label>
                        <input type="text" name="rollno"  value="<%=rollno%>"/>
                      </label></td>
                    </tr>
                    <tr>
                      <td>Name</td>
                      <td><input type="text" name="name"  value="<%=name%>"/></td>
                    </tr>
                    <tr>
                      <td>Reply</td>
                      <td><input type="text" name="query"  /></td>
                    </tr>
                              </table>
                                <%}
                         catch(Exception e)
                              {
                               e.printStackTrace();
                              }
                              %>
                <p>
                  <label>
                  <input type="submit" name="Submit" value="Submit" />
                  </label>
                </p>
              </div>
              <label>
                </label></td>
            </tr>
            </table>
      </div></td>
     </tr></table></div></form>
</body>
</html>
		
		
		
		
		
		