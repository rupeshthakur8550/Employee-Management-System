
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EDelandUpdate")
public class EDelandUpdate extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		Connection con = null;
		try {
			PrintWriter pw = response.getWriter();
			String s1 = request.getParameter("pass1");
			String s2 = request.getParameter("usr");
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Rupesh#1");
			PreparedStatement p1;
			p1 = con.prepareStatement("update employee set pass=? where id=?");
			p1.setString(1, s1);
			p1.setString(2, s2);
			int i = p1.executeUpdate();
			p1.close();
			con.close();
			if (i > 0) {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Password Reset Successfully');");
				pw.println("location='Login2.jsp';");
				pw.println("</script>");
			} else {
				pw.println("<h1> Employee of given Login Credentials doesn't Exist..</h1>");
				pw.print("<br><a href=\"Login2.jsp\"><button type=\"submit\">Return to Employee Login</button></a>");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
