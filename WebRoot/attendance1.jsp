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
		int attendance=Integer.parseInt(request.getParameter("attendance"));
		System.out.println("=="+year+"=="+sem+"=="+roll+"=="+attendance);
		pst=con.prepareStatement("insert into ATTENDENCE  values(?,?,?,?)");
		pst.setString(1,roll);
		pst.setInt(2,year);
		pst.setInt(3,sem);
		
		pst.setInt(4,attendance);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="afteratt1.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="afteratt1fail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
