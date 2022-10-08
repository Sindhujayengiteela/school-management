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
		st=con.createStatement();
		String year=request.getParameter("year");
		String sem=request.getParameter("sem");
		String qry="select * from  timetable where year='"+year+"'and sem='"+sem+"'";
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
.style10 {
	font-size: 24px;
	color: #330000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<form action="timetable.jsp">
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
              <td width="16%"><p><a href="materials.jsp">Materials</a><br />
                    <br />
                    <a href="timetable.html">Timetable</a><br /><br />
                <a href="biodata.jsp">Bio-Data</a><br />
                <br />
                    <a href="leave.html">Leave Application</a><br />
                    <br />
                     <a href="examsch.jsp">Exam Schedule</a><br />
                    <br />
                     <a href="feepay.html">Fee Payment Details</a><br />
                    <br />
                    <a href="project.html">Project Details</a><br />
                    <br />
                    <a href="transport.html">Transport Details</a><br />
                    <br />
                    <a href="attendance.html">Attendence</a><br />
                    <br />
                    <a href="result.html">Results</a></p>
                    <p><a href="comunicatestudent.html">Communicate with Lect</a></p><p><a href="showanswer.html">Show Answer from LET</a></p></td>
              <td width="84%" rowspan="9"><div align="center">
                <table width="100%" border="1">
                  <tr>
                    <td colspan="9"><div align="center">Time Table </div></td>
                  </tr>
                  <tr>
                    <td rowspan="2">Day/Period</td>
                    <td height="31">1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                    <td rowspan="8"><p>B</p>
                        <p>R</p>
                      <p>E</p>
                      <p>A</p>
                      <p>K</p></td>
                    <td>5</td>
                    <td>6</td>
                    <td>7</td>
                  </tr>
                  <tr>
                    <td>t1</td>
                    <td>t2</td>
                    <td>t3</td>
                    <td>t4</td>
                    <td>t5</td>
                    <td>t6</td>
                    <td>t7</td>
                  </tr>
                  <%while(rs.next())
                {
                
                 %>
                  <tr>
                    <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2) %>&nbsp;</td>
                    <td><%=rs.getString(3) %>&nbsp;</td>
                    <td><%=rs.getString(4) %>&nbsp;</td>
                    <td><%=rs.getString(5) %>&nbsp;</td>
                    <td><%=rs.getString(6) %>&nbsp;</td>
                    <td><%=rs.getString(7) %>&nbsp;</td>
                    <td><%=rs.getString(8) %>&nbsp;</td>
                  </tr>
                  <%}
                }
                catch(Exception e){
                e.printStackTrace();
                }
                
                 %>
                </table>
              </div></td>
            </tr>
            </table>
      </div></td>
     </tr></table></div></form>
</body>
</html>
