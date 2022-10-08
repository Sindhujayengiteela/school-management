<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>
<%!
Connection con;
	Statement pst;
	java.sql.ResultSet rs;%>
	<%
	
try
{
	con=DConnection.connect();
	Statement st=con.createStatement();
	String qry="select * from subjects ";
	 rs=st.executeQuery(qry);
	
	
	%>
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
                    <a href="leave1.html">Leave Application</a><br />
                    <br />
                     <a href="examsch1.html">Exam Schedule</a><br />
                    <br />
                     <a href="feepay1.html">Fee Payment Details</a><br />
                    <br />
                    <a href="project1.html">Project Details</a><br />
                    <br />
                    <a href="transport1.html">Transport Details</a><br />
                    <br />
                    <a href="attendance1.html">Attendence</a><br />
                    <br />
                    <a href="result1.html">Results</a></p>
                    <p><a href="adfaculty.html">ADD FACULTY </a></p></td>
              <td width="84%" rowspan="9"><div align="center">
                <table width="100%" border="0">
                  <tr>
                    <td colspan="5"><div align="center" class="style12">Subjects List </div></td>
                   </tr>
                  <tr>
                    <td valign="top">Year</td><td width="19%"><div align="center">&nbsp;Sem</div></td>
                    <td width="8%"><div align="center">Subject1</div></td>
                    <td width="8%"><div align="center">Subject2</div></td>
                    <td width="8%"><div align="center">Subject3</div></td>
                    <td width="8%"><div align="center">Subject4</div></td>
                    <td width="8%"><div align="center">Subject5</div></td>
                    <td width="8%"><div align="center">Subject6</div></td>
                    <td width="8%"><div align="center">Subject7</div></td>
                    <td width="8%"><div align="center">Subject8</div></td>
                    <td width="8%"><div align="center">Lab1</div></td>
                    <td width="8%"><div align="center">Lab2</div></td>
                    <td width="8%"><div align="center">LAb3</div></td>
                    <td width="8%"><div align="center">Lab4</div></td>
                    <td width="8%"><div align="center">Lab5</div></td>
                    
                 
                  </tr>
                   <%while(rs.next())
                  {
                  
                   %>
                  <tr><td valign="top"><%=rs.getInt(1) %></td><td width="19%"><div align="center">&nbsp;<%=rs.getInt(2) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(3) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(4) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(5) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(6) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(7) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(8) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(9) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(10) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(11) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(12) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(13) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(14) %></div></td>
                    <td width="8%"><div align="center"><%=rs.getString(15) %></div></td>
                    
                  </tr>
                  <%}
                  }
                  catch(Exception e)
                  {
                  e.printStackTrace();
                  } %>
                </table>
              </div>
                <div align="center">To Post New subjects,<a href="subjects1.html">Click Here </a></div></td>
            </tr>
            </table>
      </div></td>
     </tr></table></div></form>
</body>
</html>