import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBcon.DConnection;


public class signup extends HttpServlet {
	Connection con;
	PreparedStatement pst,pst1;
	int rs,rs1;
	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		try
		{
			con=DConnection.connect();
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:bcs","bcs","bcs");
System.out.println("connected");
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
	String dob=req.getParameter("dob");
		String gender=req.getParameter("f");
		String email=req.getParameter("email");
		String uname=req.getParameter("uname");
		String pass=req.getParameter("pass");
		String role=req.getParameter("role");
		String roll=req.getParameter("roll");
		String add=req.getParameter("add");
		String phno=req.getParameter("phno");
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
		pst.setString(1,fname);
		pst.setString(2,lname);
		pst.setString(3,dob);
		pst.setString(4,gender);
		pst.setString(5,roll);
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
			RequestDispatcher rd=req.getRequestDispatcher("../afterreg.html");
			rd.forward(req,res);
			System.out.println("login");					
		}
		else
		{
			RequestDispatcher rd=req.getRequestDispatcher("../afterregfail.html");
			rd.forward(req,res);
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
			 RequestDispatcher rd=req.getRequestDispatcher("../afterreg.html");
				rd.forward(req,res);	
			 System.out.println("login");					
			}
			else
			{
				RequestDispatcher rd=req.getRequestDispatcher("../afterregfail.html");
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
