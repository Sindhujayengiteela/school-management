<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>
<%!
Connection con;
	PreparedStatement pst;
	java.sql.ResultSet rs,rs1;%>
	
	<%
	try
	{
		con=DConnection.connect();
		String rollno=request.getParameter("rollno");
		int year=Integer.parseInt(request.getParameter("year"));
		int sem=Integer.parseInt(request.getParameter("sem"));
		int attendance=Integer.parseInt(request.getParameter("attendance"));
		
		
		 pst=con.prepareStatement("insert into ATTENDENCE  values(?,?,?,?)");
		pst.setString(1,rollno);
		pst.setInt(2,year);
		pst.setInt(3,sem);
		pst.setInt(4,attendance);
		
		
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="sigin.jsp"/>

			
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

		
	 