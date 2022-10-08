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
		String s1=request.getParameter("s1");
		String s2=request.getParameter("s2");
		String s3=request.getParameter("s3");
		String s4=request.getParameter("s4");
		String s5=request.getParameter("s5");
		String s6=request.getParameter("s6");
		String s7=request.getParameter("s7");
		String s8=request.getParameter("s8");
		String l1=request.getParameter("l1");
		String l2=request.getParameter("l2");
		String l3=request.getParameter("l3");
		String l4=request.getParameter("l4");
		String l5=request.getParameter("l5");
		pst=con.prepareStatement("insert into subjects  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setInt(1,year);
		pst.setInt(2,sem);
		pst.setString(3,s1);
		pst.setString(4,s2);
		pst.setString(5,s3);
		pst.setString(6,s4);
		pst.setString(7,s5);
		pst.setString(8,s6);
		pst.setString(9,s7);
		pst.setString(10,s8);
		pst.setString(11,l1);
		pst.setString(12,l2);
		pst.setString(13,l3);
		pst.setString(14,l4);
		pst.setString(15,l5);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="aftersubjects.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="aftersubjectsfail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
	
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
