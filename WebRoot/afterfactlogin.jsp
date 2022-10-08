<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>

<%!Connection con=null;
	Statement pst,pst1,pst2,pst3,pst4=null;
ResultSet rs,rs1,rs2,rs3,rs4=null;
String password,role,username;%>


<%
try
	{
		con=DConnection.connect();
	 username=request.getParameter("uname");

	 password=request.getParameter("pass");

		pst=con.createStatement();
		rs=pst.executeQuery("select USERNAME,PASSWORD from FACULTY where USERNAME='"+username+"' and PASSWORD='"+password+"'");
		
		if(rs.next())
		{
		%>
		<jsp:forward page="facultymoudle.html"/>
		
		<%
		
		}
		else
		{
		%>
		<jsp:forward page="sigin.html"/>
		<%}
		}
		catch(Exception e)
		{
		e.printStackTrace();
		}
		