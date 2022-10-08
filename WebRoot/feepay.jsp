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
		String roll=request.getParameter("rno");
	String purpose=request.getParameter("purpose");
		String fromdate=request.getParameter("date1");
		String amount=request.getParameter("amount");
		out.println(year);
		out.println(sem);
		out.println(roll);
		
		
		pst=con.prepareStatement("insert into feepay  values(?,?,?,?,?,?)");
		pst.setString(1,roll);
		pst.setString(2,amount);
		pst.setString(3,fromdate);
		
		pst.setInt(4,year);
		pst.setInt(5,sem);
		pst.setString(6,purpose);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="afterfee.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="afterfeefail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
