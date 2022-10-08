<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>
<%!
Connection con;
	Statement pst;
	%>
	
	<%
try
{
	con=DConnection.connect();
	String id=request.getParameter("id");
	out.println(id);
	Statement st=con.createStatement();
	String qry="delete from MATERIALS where ID='"+id+"'";
    int rs=st.executeUpdate(qry);
	
	if(rs!=0)
{
out.println("deleted");
%>
<jsp:forward page="delcomplete.html"></jsp:forward>
<%}
else
{
out.println("not deleted");
%>
<jsp:forward page="delfail.html"></jsp:forward>
<%}
}
catch(Exception e)
{
e.printStackTrace();
}


%>
	