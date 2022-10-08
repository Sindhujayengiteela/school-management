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
			
	String rollno=request.getParameter("rollno");
			String lectid=request.getParameter("lectid");
			String sname=request.getParameter("sname");
			String query=request.getParameter("query");
		//	Statement st=con.createStatement();
			
			
	 pst=con.prepareStatement("insert into STUDENTS_COMUNICATE  values(?,?,?,?)");
		pst.setString(1,rollno);
		pst.setString(2,lectid);
		pst.setString(3,sname);
		pst.setString(4,query);
		
		
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="parentmoudle.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="fail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>

		
	