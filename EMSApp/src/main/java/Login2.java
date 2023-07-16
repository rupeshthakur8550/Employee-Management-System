
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
 * Servlet implementation class Login
 */
@WebServlet("/Login2")
public class Login2 extends HttpServlet {

	// use void service when its starts and use doPost for hiding credentials
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		// Connection con=null;
		String s1 = request.getParameter("usr");
		String s2 = request.getParameter("pwd");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		PrintWriter pw = response.getWriter();
		Connection con = null;

		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Rupesh#1");
			PreparedStatement pst = con.prepareStatement("select * from employee where id=? and pass=?");
			pst.setString(1, s1);
			pst.setString(2, s2);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				pst = con.prepareStatement("select * from employee where id=?");
				pst.setString(1, s1);
				rs = pst.executeQuery();
				while (rs.next()) {
					response.sendRedirect("Result2.jsp?id=" + rs.getString(2) + "&name=" + rs.getString(1) + "&address="
							+ rs.getString(3) + "&fname=" + rs.getString(4) + "&email=" + rs.getString(5) + "&pno="
							+ rs.getString(6) + "&gender=" + rs.getString(7) + "&country=" + rs.getString(8));
//							name=rs.getString(1);
//							id=rs.getString(2);
//							address=rs.getString(3);
//							fname=rs.getString(4);
//							email=rs.getString(5);
//							pno=rs.getString(6);
//							gender=rs.getString(7);
//							country=rs.getString(8);
					break;
				}
				/*
				 * dispatcher = request.getRequestDispatcher("Select2.java");
				 * dispatcher.forward(request, response); // pw.println("<h1>Go ahead</h1>");
				 */
			} else {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('User not Exist');");
				pw.println("location='Login2.jsp';");
				pw.println("</script>");
				// dispatcher = request.getRequestDispatcher("Login.jsp");
//						pw.println("<h1>Wrong User Name and Pasword....</h1>");
			}
//					dispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}