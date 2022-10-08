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
			String sub1=request.getParameter("sub1");
			String sub2=request.getParameter("sub2");
			String sub3=request.getParameter("sub3");
			String sub4=request.getParameter("sub4");
			String sub5=request.getParameter("sub5");
			String sub6=request.getParameter("sub6");
			String sub7=request.getParameter("sub7");
			String sub8=request.getParameter("sub8");
			String lab1=request.getParameter("lab1");
			String lab2=request.getParameter("lab2");
			String lab3=request.getParameter("lab3");
			String lab4=request.getParameter("lab4");
			String lab5=request.getParameter("lab5");
			Statement st=con.createStatement();
			
			
		System.out.println("fgfdgfd==");
			String qry="update subjects set sub1='"+sub1+"',sub2='"+sub2+"',sub3='"+sub3+"',sub4='"+sub4+"',sub5='"+sub5+"',sub6='"+sub6+"',sub7='"+sub7+"',sub8='"+sub8+"',lab1='"+lab1+"',lab2='"+lab2+"',lab3='"+lab3+"',lab4='"+lab4+"',lab5='"+lab5+"' where YEAR='"+year+"' and SEM='"+sem+"'";
			rs=st.executeUpdate(qry);
			System.out.println("fgfdgfd===="+rs);
			if(rs!=0)
			{%>
			<jsp:forward page="updatesubjectscomplete.html"></jsp:forward>
			<%
			}
			else
			{
			%>
			<jsp:forward page="updatesubjectsfail.html"></jsp:forward>
			
			<%}
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
			%>