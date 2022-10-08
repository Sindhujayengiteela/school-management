<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>
<%!
Connection con;
	Statement pst,pst1,pst2;
	java.sql.ResultSet rs,rs1,rs2;
	String sub1,sub2,sub3,sub4,sub5,sub6,sub7,sub8,lab1,lab2,lab3,lab4,lab5;
	int int1,int2,int3,int4,int5,int6,int7,int8,int9,int10,int11,int12,int13,ext1,ext2,ext3,ext4,ext5,ext6,ext7,ext8,ext9,ext10,ext11,ext12,ext13;
	int totsub1,totsub2,totsub3,totsub4,totsub5,totsub6,totsub7,totsub8,totsub9,totsub10,totsub11,totsub12,totsub13;
	%>
	<%
	
	try
{
	con=DConnection.connect();
	
String year=request.getParameter("year");
String sem=request.getParameter("sem");
String roll=request.getParameter("rollno");
out.println(year);
out.println(sem);
out.println(roll);
pst=con.createStatement();
rs=pst.executeQuery("select * from intmarks where YEAR='"+year+"' and SEM='"+sem+"' and ROLLNO='"+roll+"'");

if(rs.next())
{
int1=rs.getInt(4);
int2=rs.getInt(5);
int3=rs.getInt(6);
int4=rs.getInt(7);
int5=rs.getInt(8);
int6=rs.getInt(9);
int7=rs.getInt(10);
int8=rs.getInt(11);
int9=rs.getInt(12);
int10=rs.getInt(13);
int11=rs.getInt(14);
int12=rs.getInt(15);
int13=rs.getInt(16);
pst2=con.createStatement();
rs2=pst2.executeQuery("select * from subjects where YEAR='"+year+"' and SEM='"+sem+"'");
while(rs2.next())
{
sub1=rs2.getString(3);
sub2=rs2.getString(4);
sub3=rs2.getString(5);
sub4=rs2.getString(6);
sub5=rs2.getString(7);
sub6=rs2.getString(8);
sub7=rs2.getString(9);
sub8=rs2.getString(10);
lab1=rs2.getString(11);
lab2=rs2.getString(12);
lab3=rs2.getString(13);
lab4=rs2.getString(14);
lab5=rs2.getString(15);
}

pst1=con.createStatement();
rs1=pst1.executeQuery("select * from extmarks where YEAR='"+year+"' and SEM='"+sem+"' and ROLLNO='"+roll+"'");
while(rs1.next())
{
ext1=rs1.getInt(4);
ext2=rs1.getInt(5);
ext3=rs1.getInt(6);
ext4=rs1.getInt(7);
ext5=rs1.getInt(8);
ext6=rs1.getInt(9);
ext7=rs1.getInt(10);
ext8=rs1.getInt(11);
ext9=rs1.getInt(12);
ext10=rs1.getInt(13);
ext11=rs1.getInt(14);
ext12=rs1.getInt(15);
ext13=rs1.getInt(16);

 totsub1=ext1+int1;
 totsub2=ext2+int2;
 totsub3=ext3+int3;
 totsub4=ext4+int4;
 totsub5=ext5+int5;
 totsub6=ext6+int6;
 totsub7=ext7+int7;
 totsub8=ext8+int8;
 totsub9=ext9+int9;
 totsub10=ext10+int10;
 totsub11=ext11+int11;
 totsub12=ext12+int12;
 totsub13=ext13+int13;
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
              <td width="16%"><p><a href="materials.jsp">Materials</a><br />
                    <br />
                    <a href="timetable.html">Timetable</a><br />
                    <br />
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
                <table width="752" border="1">
                  <tr>
                    <td>Resut Analysis </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>Subjects</td>
                    <td>Internal Marks </td>
                    <td>External Marks </td>
                    <td>Total</td>
                  </tr>
                  <tr>
                    <td><%= sub1%><br /><%= sub2%><br /><%= sub3%><br /><%= sub4%><br /><%= sub5%><br /><%= sub6%><br /><%= sub7%><br /><%= sub8%><br /><%= lab1%><br /><%= lab2%><br /><%= lab3%><br /><%= lab4%><br /><%= lab5%><br /></td>
                    <td><%= int1%><br /><%= int2%><br /><%= int3%><br /><%= int4%><br /><%= int5%><br /><%= int6%><br /><%= int7%><br /><%= int8%><br /><%= int9%><br /><%= int10%><br /><%= int11%><br /><%= int12%><br /><%= int13%><br /></td>
                    <td><%= ext1%><br /><%= ext2%><br /><%= ext3%><br /><%= ext4%><br /><%= ext5%><br /><%= ext6%><br /><%= ext7%><br /><%= ext8%><br /><%= ext9%><br /><%= ext10%><br /><%= ext11%><br /><%= ext12%><br /><%= ext13%><br /></td>
                    <td><%= totsub1%><br/><%= totsub2%><br/><%= totsub3%><br/><%= totsub4%><br/><%= totsub5%><br/><%= totsub6%><br/><%= totsub7%><br/><%= totsub8%><br/><%= totsub9%><br/><%= totsub10%><br/><%= totsub11%><br/><%= totsub12%><br/><%= totsub13%><br/></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>Total</td>
                    <td><%=totsub1+totsub2+totsub3+totsub4+totsub5+totsub6+totsub7+totsub8+totsub9+totsub10+totsub11+totsub12+totsub13 %></td>
                  </tr>
                </table>
              </div></td>
            </tr>
            </table>
      </div></td>
     </tr></table></div></form>
</body>
</html>

			

			
		<%
		}
else
{
%>
			<jsp:forward page="afterresult.html"/>

			
		<%
	
	
	System.out.println("login failed");						
	}

}

catch(Exception e)
{
	e.printStackTrace();
}	
	%>
	
	
	
	
	
	
	
	