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
		String roll=request.getParameter("rollno");
	String year=request.getParameter("year");
		String sem=request.getParameter("sem");
		String from=request.getParameter("fromloc");
		String to=request.getParameter("toloc");
		pst=con.prepareStatement("insert into transport  values(?,?,?,?,?)");
		pst.setString(1,roll);
		pst.setString(2,year);
		pst.setString(3,sem);
		pst.setString(4,from);
		pst.setString(5,to);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="aftertransportpost.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="aftertransportfail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
