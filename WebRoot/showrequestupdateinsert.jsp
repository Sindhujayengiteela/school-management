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
	rollno=request.getParameter("rollno");
	name=request.getParameter("name");
	query=request.getParameter("query");

	 

		pst=con.createStatement();
		int dd=pst.executeUpdate("update STUDENTS_COMUNICATE set QUERY='"+query+"' where ROLLNO='"+rollno+"'");
		if(dd!=0)
		{
	%>
	
	<jsp:forward page="facultymoudle.html"/>
	<%
	}
	else
	{%>
	<jsp:forward page="fail.html"/>
	
	<%}
	}
	catch(Exception e)
	{
	e.printStackTrace();
	}%>