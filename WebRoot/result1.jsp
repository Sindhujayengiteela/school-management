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
		System.out.println(year);
		int sem=Integer.parseInt(request.getParameter("sem"));
	String roll=request.getParameter("rollno");
		int s1=Integer.parseInt(request.getParameter("s1"));
		int s2=Integer.parseInt(request.getParameter("s2"));
		int s3=Integer.parseInt(request.getParameter("s3"));
		int s4=Integer.parseInt(request.getParameter("s4"));
		int s5=Integer.parseInt(request.getParameter("s5"));
		int s6=Integer.parseInt(request.getParameter("s6"));
		int s7=Integer.parseInt(request.getParameter("s7"));
		int s8=Integer.parseInt(request.getParameter("s8"));
		int l1=Integer.parseInt(request.getParameter("l1"));
		int l2=Integer.parseInt(request.getParameter("l2"));
		int l3=Integer.parseInt(request.getParameter("l3"));
		int l4=Integer.parseInt(request.getParameter("l4"));
		int l5=Integer.parseInt(request.getParameter("l5"));
		String role=request.getParameter("marks");
		System.out.println(s1);
		System.out.println(s2);
		System.out.println(s3);
		System.out.println(s4);
		System.out.println(s5);
		System.out.println(s6);
		System.out.println(s7);
		System.out.println(s8);
		System.out.println(l1);
		System.out.println(l2);
		System.out.println(l3);
		System.out.println(l4);
		System.out.println(l5);
		System.out.println(year);
		System.out.println(sem);
		System.out.println(roll);
		System.out.println("in external");
		if(role.equals("internal"))
		{
		pst=con.prepareStatement("insert into intmarks  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1,roll);
		pst.setInt(2,year);
		pst.setInt(3,sem);
		pst.setInt(4,s1);
		pst.setInt(5,s2);
		pst.setInt(6,s3);
		pst.setInt(7,s4);
		pst.setInt(8,s5);
		pst.setInt(9,s6);
		pst.setInt(10,s7);
		pst.setInt(11,s8);
		pst.setInt(12,l1);
		pst.setInt(13,l2);
		pst.setInt(14,l3);
		pst.setInt(15,l4);
		pst.setInt(16,l5);
		System.out.println("connected243");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="aftermarks.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="aftermarksfail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		}
		else if(role.equals("external"))
		{
		pst=con.prepareStatement("insert into EXTMARKS  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1,roll);
		pst.setInt(2,year);
		pst.setInt(3,sem);
		pst.setInt(4,s1);
		pst.setInt(5,s2);
		pst.setInt(6,s3);
		pst.setInt(7,s4);
		pst.setInt(8,s5);
		pst.setInt(9,s6);
		pst.setInt(10,s7);
		pst.setInt(11,s8);
		pst.setInt(12,l1);
		pst.setInt(13,l2);
		pst.setInt(14,l3);
		pst.setInt(15,l4);
		pst.setInt(16,l5);
		System.out.println("connected243");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="aftermarks.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="aftermarksfail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		}
	
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
