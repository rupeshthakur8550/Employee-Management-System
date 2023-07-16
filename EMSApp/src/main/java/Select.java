
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

public class Select extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String s1 = request.getParameter("id");
		Connection con = null;
		try {
//				String name="",id="",address="",fname="",email="",pno="",gender="",country="";

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Rupesh#1");
			PreparedStatement p1;
			p1 = con.prepareStatement("select * from employee where id=?");
			p1.setString(1, s1);
			ResultSet rs = p1.executeQuery();
			if (rs.next()) {
				while (true) {
					response.sendRedirect("Result.jsp?id=" + rs.getString(2) + "&name=" + rs.getString(1) + "&address="
							+ rs.getString(3) + "&fname=" + rs.getString(4) + "&email=" + rs.getString(5) + "&pno="
							+ rs.getString(6) + "&gender=" + rs.getString(7) + "&country=" + rs.getString(8));
//						name=rs.getString(1);
//						id=rs.getString(2);
//						address=rs.getString(3);
//						fname=rs.getString(4);
//						email=rs.getString(5);
//						pno=rs.getString(6);
//						gender=rs.getString(7);
//						country=rs.getString(8);
					break;
				}
			} else {
				pw.println("<h1> Employee With Given Employee ID doesn't Exist.......</h1>");
				pw.print("<br><a href=\"index.jsp\"><button type=\"submit\">Return to Admin Console</button></a>");

			}
			rs.close();
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
