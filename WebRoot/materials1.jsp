<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>

<%!Connection con;
	PreparedStatement pst,pst1;
	int rs,rs1;%>
	
	<%
	try
		{
			con=DConnection.connect();
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:bcs","bcs","bcs");
System.out.println("connected");
String id=request.getParameter("id");
		String year=request.getParameter("year");
		String sem=request.getParameter("sem");
	String sub=request.getParameter("sub");
		String doc=request.getParameter("doc");
		String lesson=request.getParameter("lesson");
		pst=con.prepareStatement("insert into materials  values(?,?,?,?,?,?)");
		pst.setString(1,year);
		pst.setString(2,sem);
		pst.setString(3,sub);
		pst.setString(4,sub);
		pst.setString(5,lesson);
		pst.setString(6,id);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="afterpostmaterials.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="afterpostmaterialsfail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
