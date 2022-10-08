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
			
			String roll=request.getParameter("rollno");
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
			String qry="update intmarks set YEAR='"+year+"',SEM='"+sem+"',s1='"+sub1+"',s2='"+sub2+"',s3='"+sub3+"',s4='"+sub4+"',s5='"+sub5+"',s6='"+sub6+"',s7='"+sub7+"',s8='"+sub8+"',l1='"+lab1+"',l2='"+lab2+"',l3='"+lab3+"',l4='"+lab4+"',l5='"+lab5+"' where rollno='"+roll+"'";
			rs=st.executeUpdate(qry);
			System.out.println("fgfdgfd===="+rs);
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