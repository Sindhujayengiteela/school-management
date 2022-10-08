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
			
			
			String year=request.getParameter("year");
			String sem=request.getParameter("sem");
			String sub=request.getParameter("sub");
			String date=request.getParameter("date");
			String time=request.getParameter("time");
			
			Statement st=con.createStatement();
			
			
		System.out.println("fgfdgfd==");
			String qry="update EXAMSCHEDULE set YEAR='"+year+"',SEM='"+sem+"',DATE1='"+date+"',TIME='"+time+"' where SUBJECT='"+sub+"'";
			rs=st.executeUpdate(qry);
			System.out.println("fgfdgfd===="+qry);
			if(rs!=0)
			{%>
			<jsp:forward page="updateexamcomplete.html"></jsp:forward>
			<%
			}
			else
			{
			%>
			<jsp:forward page="updateexamfail.html"></jsp:forward>
			
			<%}
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
			%>