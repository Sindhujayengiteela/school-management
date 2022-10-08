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
		int year=Integer.parseInt(request.getParameter("year"));
		int sem=Integer.parseInt(request.getParameter("sem"));
		String roll=request.getParameter("rollno");
	String purpose=request.getParameter("Purpose");
		String fromdate=request.getParameter("fromdate");
		String todate=request.getParameter("todate");
		out.println(year);
		out.println(sem);
		out.println(roll);
		out.println(purpose);
		out.println(fromdate);
		out.println(todate);
		pst=con.prepareStatement("insert into LEAVE  values(?,?,?,?,?,?)");
		pst.setString(1,roll);
		pst.setString(2,purpose);
		pst.setString(3,fromdate);
		pst.setString(4,todate);
		pst.setInt(5,year);
		pst.setInt(6,sem);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="afterleave.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="afterleavefail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
