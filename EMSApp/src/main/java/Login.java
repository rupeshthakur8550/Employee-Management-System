

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		//Connection con=null;
		String s1=request.getParameter("usr");
		String s2=request.getParameter("pwd");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher=null;
		Connection con=null;
		try {
			PrintWriter pw=response.getWriter();
			
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","Rupesh#1");
			PreparedStatement pst=con.prepareStatement("select * from login where USR=? and PWD=?");
			pst.setString(1, s1);
			pst.setString(2, s2);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				dispatcher = request.getRequestDispatcher("index.jsp");
				dispatcher.forward(request, response);
//				pw.println("<h1>Go ahead</h1>");
			}
			else
			{
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('User not Exist');");
				pw.println("location='Login.jsp';");
				pw.println("</script>");
				//dispatcher = request.getRequestDispatcher("Login.jsp");
//				pw.println("<h1>Wrong User Name and Pasword....</h1>");
			}
//			dispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}

}
