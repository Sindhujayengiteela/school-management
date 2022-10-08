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
			
			String day=request.getParameter("day");
			String one=request.getParameter("one");
			String two=request.getParameter("two");
			String three=request.getParameter("three");
			String four=request.getParameter("four");
			String five=request.getParameter("Five");
			String six=request.getParameter("six");
			String seven=request.getParameter("seven");
			String year=request.getParameter("year");
			String sem=request.getParameter("sem");
			Statement st=con.createStatement();
			
			
		System.out.println("fgfdgfd==");
	String qry="update TIMETABLE set one='"+one+"',two='"+two+"',three='"+three+"',four='"+four+"',five='"+five+"',six='"+six+"',seven='"+seven+"',YEAR='"+year+"',SEM='"+sem+" 'where DAY='"+day+"'";
			//String qry="update TIMETABLE set sem='"+sem+"' where day='tue'";
			int rs=st.executeUpdate(qry);
			System.out.println("fgfdgfd===="+qry);
			if(rs!=0)
			{%>
			<jsp:forward page="updatetimecomplete.html"></jsp:forward>
			<%
			}
			else
			{
			%>
			<jsp:forward page="updatetimefail.html"></jsp:forward>
			
			<%}
			}
			catch(Exception e)
			{
			e.printStackTrace();
			}
			%>