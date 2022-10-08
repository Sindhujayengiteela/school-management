<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>

<%!Connection con;
	PreparedStatement pst,pst1;
	int rs,rs1;%>
	
	<%
	try
		{
		System.out.println("sdfsdfds");
			con=DConnection.connect();
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:bcs","bcs","bcs");
			System.out.println("sdfsdfds===");
			String roll=request.getParameter("rollno");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from intmarks where rollno='"+roll+"'");
			System.out.println("sdfsdfds==="+roll);
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
<form action="resultupdateinsert.jsp">
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
                    <td valign="top">RollNo<br /></td>
                      <td valign="top"><input type="text" name="rollno"  value="<%=roll%>"/></td>
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
                    <td>SUBJECT1</td>
                      <td><input type="text" name="sub1"  value="<%=rs.getString(3)%>"/></td>
                    </tr>
                  <tr>
                    <td>SUBJECT2</td>
                      <td><input type="text" name="sub2"  value="<%=rs.getString(4)%>"/></td>
                    </tr>
                    <tr>
                    <td>SUBJECT3</td>
                      <td><input type="text" name="sub3"  value="<%=rs.getString(5)%>"/></td>
                    </tr>
                    <tr>
                    <td>SUBJECT4</td>
                      <td><input type="text" name="sub4"  value="<%=rs.getString(6)%>"/></td>
                    </tr>
                    <tr>
                    <td>SUBJECT5</td>
                      <td><input type="text" name="sub5"  value="<%=rs.getString(7)%>"/></td>
                    </tr>
                    <tr>
                    <td>SUBJECT6</td>
                      <td><input type="text" name="sub6"  value="<%=rs.getString(8)%>"/></td>
                    </tr>
                    <tr>
                    <td>SUBJECT7</td>
                      <td><input type="text" name="sub7"  value="<%=rs.getString(9)%>"/></td>
                    </tr>
                    <tr>
                    <td>SUBJECT8</td>
                      <td><input type="text" name="sub8"  value="<%=rs.getString(10)%>"/></td>
                    </tr>
                    <tr>
                    <td>LAB1</td>
                      <td><input type="text" name="lab1"  value="<%=rs.getString(11)%>"/></td>
                    </tr>
                    <tr>
                    <td>Lab2</td>
                      <td><input type="text" name="lab2"  value="<%=rs.getString(12)%>"/></td>
                    </tr>
                    <tr>
                    <td>Lab3</td>
                      <td><input type="text" name="lab3"  value="<%=rs.getString(13)%>"/></td>
                    </tr>
                    <tr>
                    <td>Lab4</td>
                      <td><input type="text" name="lab4"  value="<%=rs.getString(14)%>"/></td>
                    </tr>
                    <tr>
                    <td>Lab5</td>
                      <td><input type="text" name="lab5"  value="<%=rs.getString(15)%>"/></td>
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