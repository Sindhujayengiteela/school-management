<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>


	
	<%
	try
		{
		System.out.println("sdfsdfds");
			Connection con=DConnection.connect();
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:bcs","bcs","bcs");
			System.out.println("sdfsdfds===");
			String sub=request.getParameter("sub");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from EXAMSCHEDULE where subject='"+sub+"'");
			System.out.println("sdfsdfds==="+sub);
			while(rs.next())
			{
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
.style12 {
	font-size: 24px;
	color: #330000;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
-->
</style>
</head>

<body>
<form action="examupdateinsert.jsp">
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
              <td width="16%"><p><a href="materials1.html">Materials</a><br />
                    <br />
                    <a href="timetable1.html">Timetable</a><br />
                    <br />
                    <a href="subjects1.html">Subjects</a><br />
                    <br />
                <a href="biodata1.jsp">Bio-Data</a><br />
                <br />
                    <a href="leave1.jsp">Leave Application</a><br />
                    <br />
                     <a href="examsch1.html">Exam Schedule</a><br />
                    <br />
                     <a href="feepay1.jsp">Fee Payment Details</a><br />
                    <br />
                    <a href="project1.jsp">Project Details</a><br />
                    <br />
                    <a href="transport1.jsp">Transport Details</a><br />
                    <br />
                    <a href="attendance1.html">Attendence</a><br />
                    <br />
                    <a href="result1.html">Results</a></p>
                    <p><a href="adfaculty.html">ADD FACULTY </a></p></td>
              <td width="84%" rowspan="9"><div align="center">
                <table width="260" border="1">
                  <tr>
                    <td valign="top">sub<br /></td>
                      <td valign="top"><input type="text" name="sub"  value="<%=sub%>"/></td>
                    </tr>
                  <tr>
                    <td width="92">YEAR</td>
                      <td width="152"><label></label>
                        <div align="center">
                          <input type="text" name="year" value="<%=rs.getString(1) %>" />
                        </div></td>
                    </tr>
                  <tr>
                    <td>SEM</td>
                      <td><input type="text" name="sem"  value="<%=rs.getString(2)%>"/></td>
                    </tr>
                  <tr>
                    <td>Date</td>
                      <td><input type="text" name="date"  value="<%=rs.getString(4)%>"/></td>
                    </tr>
                  <tr>
                    <td>Time</td>
                      <td><input type="text" name="time"  value="<%=rs.getString(5)%>"/></td>
                    </tr>
                  
                  <tr>
                    <td>&nbsp;</td>
                      <td><label>
                        <input type="submit" name="Submit" value="Submit" />
                        </label></td>
                    </tr>
                </table>
              </div></td>
            </tr>
            </table>
      </div></td>
     </tr></table></div></form>
</body>
</html>
<%}
    } 
    catch(Exception e)
    {
    e.printStackTrace();
    }%>