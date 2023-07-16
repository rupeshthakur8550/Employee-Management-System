
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
import java.io.PrintWriter;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String s2 = request.getParameter("id");
		try {
			Connection con = null;
			Class.forName("com.mysql.jdbc.Driver");
			PreparedStatement pst;
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Rupesh#1");
			pst = con.prepareStatement("select * from employee where id=?");
			pst.setString(1, s2);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				pw.println("<h1> Admin With Given Admin ID Already Exist.......</h1>");
				pw.println("<h1> Note - Admin ID must be Unique.....</h1>");
				pw.print("<br><a href=\"Login.jsp\"><button type=\"submit\">Return to Admin Login</button></a>");
			} else {
				// Insertion of elements
				pst = con.prepareStatement("insert into login values(?,?,?,?,?,?)");
				pst.setString(1, request.getParameter("name"));
				pst.setString(2, s2);
				pst.setString(3, request.getParameter("desig"));
				pst.setString(4, request.getParameter("email"));
				pst.setString(5, request.getParameter("usr"));
				pst.setString(6, request.getParameter("pwd"));
				int i = pst.executeUpdate();
				if (i > 0) {
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert('Registration for Admin is Successfull..');");
					pw.println("location='Login.jsp';");
					pw.println("</script>");
				}
				con.close();
				pst.close();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
