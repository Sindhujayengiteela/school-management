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
	String day=request.getParameter("day");
		String one=request.getParameter("one");
		String two=request.getParameter("two");
		String three=request.getParameter("three");
		String four=request.getParameter("four");
		String five=request.getParameter("five");
		String six=request.getParameter("six");
		String seven=request.getParameter("seven");
		pst=con.prepareStatement("insert into timetable  values(?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1,day);
		pst.setString(2,one);
		pst.setString(3,two);
		pst.setString(4,three);
		pst.setString(5,four);
		pst.setString(6,five);
		pst.setString(7,six);
		pst.setString(8,seven);
		pst.setString(9,year);
		pst.setString(10,sem);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="aftertimetable1.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="aftertimetablefail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
	
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
