<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="ISO-8859-1"%>
<%@page import="DBcon.DConnection;"%>
<%!
Connection con;
	PreparedStatement pst;
	java.sql.ResultSet rs,rs1;%>
	
	<%
	try
	{
		con=DConnection.connect();
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String dbo=request.getParameter("dbo");
		String gen=request.getParameter("gen");
		String email=request.getParameter("email");
		int idno=Integer.parseInt(request.getParameter("idno"));
		String qua=request.getParameter("qua");
		String intsub=request.getParameter("intsub");
		String add=request.getParameter("add");
		int phno=Integer.parseInt(request.getParameter("phno"));
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String exp=request.getParameter("exp");
		
		
		 pst=con.prepareStatement("insert into FACULTY  values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1,fname);
		pst.setString(2,lname);
		pst.setString(3,dbo);
		pst.setString(4,gen);
		pst.setString(5,email);
		pst.setString(6,qua);
		pst.setString(7,intsub);
		pst.setString(8,add);
		pst.setInt(9,phno);
		pst.setString(10,uname);
		pst.setString(11,pass);
		pst.setInt(12,idno);
	pst.setString(13,exp);
		
		
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="afteraddfaculty.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="afteraddfacultyfail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
	
	 %>

		
	 