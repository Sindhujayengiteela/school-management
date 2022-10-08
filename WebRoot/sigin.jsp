<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>

<%!Connection con=null;
	Statement pst,pst1,pst2,pst3,pst4=null;
ResultSet rs,rs1,rs2,rs3,rs4=null;
String password,role,username;%>


<%
try
	{
		con=DConnection.connect();
	 username=request.getParameter("un");
	 session.setAttribute("username",username);
	 password=request.getParameter("ps");
	 role=request.getParameter("role");
	System.out.println("hu=="+username+"==="+password);
	if(role.equals("student"))
	{
		pst=con.createStatement();
		rs=pst.executeQuery("select USERNAME,PASSWORD from STUDENT where USERNAME='"+username+"' and PASSWORD='"+password+"'");
		System.out.println("hu"+rs);
		if(rs.next())
		{
			pst3=con.createStatement();
			rs3=pst3.executeQuery("select * from materials");
			%>
			<jsp:forward page="afterlogin.jsp"/>

			
		<%	System.out.println("login");					
		}
		else
		{%>
		<jsp:forward page="afterloginfail.html"/>
			
		<%	System.out.println("login failed");						
		}
	}
	if(role.equals("parent"))
	{
		pst1=con.createStatement();
		rs1=pst1.executeQuery("select USERNAME,PASSWORD from parent where USERNAME='"+username+"' and PASSWORD='"+password+"'");
		System.out.println("hu"+rs);
		if(rs1.next())
		{
			pst3=con.createStatement();
			rs3=pst3.executeQuery("select * from materials");
			%>
			<jsp:forward page="parentmoudle.html"/>
			<%
			
			System.out.println("login");					
		}
		else
		{%>
		<jsp:forward page="afterloginfail.html"/>
		<%
			
			System.out.println("login failed");						
		}
	}
	if(role.equals("faculty"))
	{
		pst2=con.createStatement();
		rs2=pst2.executeQuery("select USERNAME,PASSWORD from FACULTY where USERNAME='"+username+"' and PASSWORD='"+password+"'");
		System.out.println("hu"+rs);
		if(rs2.next())
		{
		%>
		<jsp:forward page="facultymoudle.html"/>
		<%
			
			System.out.println("login");					
		}
		else
		{%>
		<jsp:forward page="afterloginfail.html"/>
		
		<%
			
			System.out.println("login failed");						
		}
	}
	if(role.equals("admin"))
	{
		pst4=con.createStatement();
		rs4=pst4.executeQuery("select USERNAME,PASSWORD from adminlogin where USERNAME='"+username+"' and PASSWORD='"+password+"'");
		System.out.println("hu"+rs);
		if(rs4.next())
		{%>
		<jsp:forward page="afteradminlogin.html"/>
		<%
			
			System.out.println("login");					
		}
		else
		{%>
		<jsp:forward page="afteradminloginfail.html"/>
		<%			
			System.out.println("login failed");						
		}
	}
}
catch(Exception e)
{
		e.printStackTrace();
}	
 %>

