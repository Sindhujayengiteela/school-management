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
System.out.println("connected");
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
	String dob=request.getParameter("dob");
		String gender=request.getParameter("f");
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String role=request.getParameter("role");
		String roll=request.getParameter("roll");
		String add=request.getParameter("add");
		String phno=request.getParameter("phno");
		out.println(fname);
		out.println(lname);
		out.println(dob);
		out.println(gender);
		out.println(email);
		out.println(uname);
		out.println(pass);
		out.println(roll);
		out.println(add);
		out.println(phno);
		if(role.equals("student"))
		{
		pst=con.prepareStatement("insert into student  values(?,?,?,?,?,?,?,?,?,?)");
		pst.setString(1,roll);
		pst.setString(2,fname);
		pst.setString(3,lname);
		pst.setString(4,dob);
		pst.setString(5,gender);
		pst.setString(6,email);
		pst.setString(7,add);
		pst.setString(8,phno);
		pst.setString(9,uname);
		pst.setString(10,pass);
		System.out.println("connected2");
		int rs=pst.executeUpdate();
		System.out.println("connected22"+rs);
		if(rs!=0)
		{
		
		%>
			<jsp:forward page="afterreg.html"/>

			
		<%
			
			System.out.println("login");					
		}
		else
		{
		
		%>
			<jsp:forward page="afterregfail.html"/>

			
		<%
			
			System.out.println("login failed");						
			}
		}
		else if(role.equals("parent"))
		{
			
		pst1=con.prepareStatement("insert into parent  values(?,?,?,?,?,?,?)");
		pst1.setString(1,roll);
		pst1.setString(2,fname);
		pst1.setString(3,lname);
		pst1.setString(4,add);
		pst1.setString(5,phno);
		pst1.setString(6,uname);
		pst1.setString(7,pass);
		
		System.out.println("xxxxxxx...");
		 rs1=pst1.executeUpdate();
		 if(rs1!=0)
			{
			%>
			<jsp:forward page="afterreg.html"/>

			
		<%
			 	
			 System.out.println("login");					
			}
			else
			{
			
			%>
			<jsp:forward page="afterregfail.html"/>

			
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
