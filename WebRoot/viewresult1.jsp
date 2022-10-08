<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>
<%!
Connection con;
	Statement st,st1,st2,st3;
	java.sql.ResultSet rs,rs1,rs2,rs3;%>
	
	<%
	try
	{
		con=DConnection.connect();
		int year=Integer.parseInt(request.getParameter("year"));
		int sem=Integer.parseInt(request.getParameter("sem"));
		st=con.createStatement();
		String qry="select * from  intmarks where YEAR='"+year+"' and SEM='"+sem+"'" ;
		rs=st.executeQuery(qry);
		System.out.println("rs===="+rs);
		st1=con.createStatement();
		String qry1="select * from  EXTMARKS where YEAR='"+year+"' and SEM='"+sem+"'";
		rs1=st1.executeQuery(qry1);
		st2=con.createStatement();
		String qry2="select * from  SUBJECTS where YEAR='"+year+"' and SEM='"+sem+"'";
		rs2=st2.executeQuery(qry2);
		st3=con.createStatement();
		String qry3="select ROLLNO   from EXTMARKS where YEAR='"+year+"' and SEM='"+sem+"'";
		rs3=st3.executeQuery(qry3);
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
.style11 {font-size: 18px; color: #0000FF; }
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
                <a href="biodata1.html">Bio-Data</a><br />
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
                <table width="671" border="1">
                    <tr>
                      <td height="26"><div align="center">Roll No </div></td>
                      <td><div align="center">Subject</div></td>
                      <td><div align="center">INT Marks </div></td>
                      <td><div align="center">EXT Marks </div></td>
                    </tr>
                    <tr>
                      <td width="661" height="56" colspan="4"><table width="662" border="1">
                        <tr>
                       <%while(rs3.next())
                       { %>
                          <td width="140" height="33"><%=rs3.getString(1) %><br></td>
                          
                          <%}
                          while(rs2.next())
                          { %>
                          <td width="164"><%= rs2.getString(3)%><br><%= rs2.getString(4)%><br><%= rs2.getString(5)%><br><%= rs2.getString(6)%><br><%= rs2.getString(7)%><br><%= rs2.getString(8)%><br><%= rs2.getString(9)%><br><%= rs2.getString(10)%><br><%= rs2.getString(11)%><br><%= rs2.getString(12)%><br><%= rs2.getString(13)%><br><%= rs2.getString(14)%><br><%= rs2.getString(15)%></td>
                          
                          <%} 
                          while(rs.next())
                          { %>
                          <td width="160"><%= rs.getInt(4)%><br><%= rs.getInt(5)%><br><%= rs.getInt(6)%><br><%= rs.getInt(7)%><br><%= rs.getInt(8)%><br><%= rs.getInt(9)%><br><%= rs.getInt(10)%><br><%= rs.getInt(11)%><br><%= rs.getInt(12)%><br><%= rs.getInt(13)%><br><%= rs.getInt(14)%><br><%= rs.getInt(15)%><br><%= rs.getInt(16)%><br></td>
                          <%} 
                          while(rs1.next()) 
                          {%>
                          <td width="170"><%= rs1.getInt(4)%><br><%= rs1.getInt(5)%><br><%= rs1.getInt(6)%><br><%= rs1.getInt(7)%><br><%= rs1.getInt(8)%><br><%= rs1.getInt(9)%><br><%= rs1.getInt(10)%><br><%= rs1.getInt(11)%><br><%= rs1.getInt(12)%><br><%= rs1.getInt(13)%><br><%= rs1.getInt(14)%><br><%= rs1.getInt(15)%><br><%= rs1.getInt(16)%><br></td>
                          <%}
                          }
                          catch(Exception e)
                          {
                          e.printStackTrace();
                          } %>
                        </tr>
                      </table></td>
                    </tr>
                              </table>
              </div></td>
            </tr>
            </table>
      </div></td>
     </tr></table></div></form>
</body>
</html>