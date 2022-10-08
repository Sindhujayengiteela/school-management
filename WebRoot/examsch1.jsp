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
		String year=request.getParameter("year");
		String sem=request.getParameter("sem");
	String sub=request.getParameter("sub");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		pst=con.prepareStatement("insert into EXAMSCHEDULE  values(?,?,?,?,?)");
		pst.setString(1,year);
		pst.setString(2,sem);
		pst.setString(3,sub);
		pst.setString(4,date);
		pst.setString(5,time);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="afterexamschedule.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="afterexamschedulefail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
