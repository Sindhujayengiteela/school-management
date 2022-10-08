import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.resource.cci.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBcon.DConnection;


public class result extends HttpServlet {
	Connection con;
	Statement pst,pst1;
	java.sql.ResultSet rs,rs1;
	/**	 * The doGet method of the servlet. <br>
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
	
String year=req.getParameter("year");
String sem=req.getParameter("sem");
String roll=req.getParameter("roll");
out.println(year);
out.println(sem);
out.println(roll);
pst=con.createStatement();
rs=pst.executeQuery("select * from intmarks where YEAR='"+year+"' and SEM='"+sem+"' and ROLLNO='"+roll+"'");
if(rs.next())
{
	RequestDispatcher rd=req.getRequestDispatcher("../aftermarks.html");
	rd.forward(req,res);
	System.out.println("login");					
}
else
{
	RequestDispatcher rd=req.getRequestDispatcher("../aftermarksfail.html");
	rd.forward(req,res);
	System.out.println("login failed");						
	}
pst1=con.createStatement();
rs1=pst1.executeQuery("select * from extmarks where YEAR='"+year+"' and SEM='"+sem+"' and ROLLNO='"+roll+"'");
if(rs1.next())
{
	RequestDispatcher rd=req.getRequestDispatcher("../aftermarks.html");
	rd.forward(req,res);
	System.out.println("login");					
}
else
{
	RequestDispatcher rd=req.getRequestDispatcher("../aftermarksfail.html");
	rd.forward(req,res);
	System.out.println("login failed");						
	}
}

catch(Exception e)
{
	e.printStackTrace();
}	
}
}
