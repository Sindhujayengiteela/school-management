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
	String title=request.getParameter("title");
		String project=request.getParameter("project");
		pst=con.prepareStatement("insert into project  values(?,?,?)");
		pst.setString(1,roll);
		pst.setString(2,title);
		pst.setString(3,project);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="afterprojectpost.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="afterprojectfail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>
