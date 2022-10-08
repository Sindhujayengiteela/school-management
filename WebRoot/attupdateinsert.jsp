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
String roll=request.getParameter("rollno");
String att=request.getParameter("att");
Statement st=con.createStatement();


System.out.println("fgfdgfd==");
String qry="update attendence set YEAR='"+year+"',SEM='"+sem+"',ATTENDENCE='"+att+"',rollno='"+roll+"' where rollno='"+roll+"'";
rs=st.executeUpdate(qry);
System.out.println("fgfdgfd===="+qry);
if(rs!=0)
{%>
<jsp:forward page="updateattcomplete.html"></jsp:forward>
<%
}
else
{
%>
<jsp:forward page="updateattfail.html"></jsp:forward>

<%}
}
catch(Exception e)
{
e.printStackTrace();
}
%>  