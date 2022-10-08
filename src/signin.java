import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBcon.DConnection;


public class signin extends HttpServlet {

	Connection con;
	Statement pst,pst1,pst2,pst3;
ResultSet rs,rs1,rs2,rs3;
String password,role,username;

	public void service(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException
	{
		
	res.setContentType("text/html");
	PrintWriter out=res.getWriter();
	try
	{
		con=DConnection.connect();
	 username=req.getParameter("un");
	 password=req.getParameter("ps");
	 role=req.getParameter("role");
	System.out.println("hu=="+username+"==="+password);
	if(role.equals("student"))
	{
		pst=con.createStatement();
		rs=pst.executeQuery("select USERNAME,PASSWORD from STUDENT where USERNAME='"+username+"' and PASSWORD='"+password+"'");
		System.out.println("hu"+rs);
		if(rs.next())
		{
			System.out.println("after resultset==");
			pst3=con.createStatement();
			rs3=pst3.executeQuery("select * from materials");
			RequestDispatcher rd=req.getRequestDispatcher("../afterlogin.html");
			rd.forward(req,res);
			System.out.println("login");					
		}
		else
		{
			RequestDispatcher rd=req.getRequestDispatcher("../afterloginfail.html");
			rd.forward(req,res);
			System.out.println("login failed");						
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
			RequestDispatcher rd=req.getRequestDispatcher("../afterlogin.html");
			rd.forward(req,res);
			System.out.println("login");					
		}
		else
		{
			RequestDispatcher rd=req.getRequestDispatcher("../afterloginfail.html");
			rd.forward(req,res);
			System.out.println("login failed");						
		}
	}
	if(role.equals("faculty"))
	{
		pst2=con.createStatement();
		rs2=pst2.executeQuery("select USERNAME,PASSWORD from faculty where USERNAME='"+username+"' and PASSWORD='"+password+"'");
		System.out.println("hu"+rs);
		if(rs2.next())
		{
		
			RequestDispatcher rd=req.getRequestDispatcher("../afterfactlogin.html");
			rd.forward(req,res);
			System.out.println("login");					
		}
		else
		{
			RequestDispatcher rd=req.getRequestDispatcher("../afterfactloginfail.html");
			rd.forward(req,res);
			System.out.println("login failed");						
		}
	}
}
catch(Exception e)
{
		e.printStackTrace();
}	
}
}
