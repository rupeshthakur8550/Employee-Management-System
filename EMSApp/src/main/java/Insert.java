
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

/**
 * Servlet implementation class Login
 */
public class Insert extends HttpServlet {
	//use void service when its starts and use doPost for hiding credentials
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String s1 = request.getParameter("name");
		String s2 = request.getParameter("id");
		String s3 = request.getParameter("fname");
		String s4 = request.getParameter("email");
		String s5 = request.getParameter("pno");
		String s6 = request.getParameter("gender");
		String s7 = request.getParameter("country");
		String s8 = request.getParameter("pass");
		String s9 = request.getParameter("address");
		Connection con = null;
//		System.out.println(s6);
		try {
			PrintWriter pw = response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Rupesh#1");
			PreparedStatement pst;
			// Insertion of elements
			pst = con.prepareStatement("select * from employee where id=?");
			pst.setString(1, s2);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				pw.println("<h1> Employee With Given Employee ID Already Exist.......</h1>");
				pw.println("<h1> Note - Employee ID must be Unique.....</h1>");
				pw.print("<br><a href=\"index.jsp\"><button type=\"submit\">Return to Admin Console</button></a>");
			} else {
				pst = con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?)");
				pst.setString(1, s1);
				pst.setString(2, s2);
				pst.setString(3, s9);
				pst.setString(4, s3);
				pst.setString(5, s4);
				pst.setString(6, s5);
				pst.setString(7, s6);
				pst.setString(8, s7);
				pst.setString(9, s8);
				int j = pst.executeUpdate();
				if (j > 0) {
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert('Insertion Successfull');");
					pw.println("location='index.jsp';");
					pw.println("</script>");
				}
			}
			con.close();
			pst.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}