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
			
			String id=request.getParameter("id");
			String year=request.getParameter("year");
			String sem=request.getParameter("sem");
			String sub=request.getParameter("sub");
			String attach=request.getParameter("attach");
			String less=request.getParameter("less");
			
			Statement st=con.createStatement();
			
			
		System.out.println("fgfdgfd==");
	
			String qry="update MATERIALS set YEAR='"+year+"',SEM='"+sem+"',SUBJECT='"+sub+"',ATTACHMENT='"+attach+"',LESSONPLAN='"+less+"' where ID='"+id+"'";
			rs=st.executeUpdate(qry);
			System.out.println("fgfdgfd===="+qry);
			if(rs!=0)
			{%>
			<jsp:forward page="updatecomplete.html"></jsp:forward>
			<%
			}
			else
			{
			%>
			<jsp:forward page="updatefail.html"></jsp:forward>
			
			<%}
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
			%>