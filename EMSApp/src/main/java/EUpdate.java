
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EUpdate")
public class EUpdate extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String s1 = request.getParameter("name");
		String s2 = request.getParameter("id");
		String s3 = request.getParameter("address");
		String s4 = request.getParameter("fname");
		String s5 = request.getParameter("email");
		String s6 = request.getParameter("pno");
		String s7 = request.getParameter("gender");
		String s8 = request.getParameter("country");
		Connection con = null;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Rupesh#1");
			PreparedStatement p1;
//			System.out.println(s2);
			p1 = con.prepareStatement("select * from employee where id=?");
			p1.setString(1, s2);
			ResultSet rs = p1.executeQuery();
			if (rs.next()) {
				p1 = con.prepareStatement(
						"update employee set name=? ,address=? ,fname=? ,email=? ,pno=? ,gender=? ,country=? where id=?");
				p1.setString(1, s1);
				p1.setString(2, s3);
				p1.setString(3, s4);
				p1.setString(4, s5);
				p1.setString(5, s6);
				p1.setString(6, s7);
				p1.setString(7, s8);
				p1.setString(8, s2);
				int j = p1.executeUpdate();
				if (j > 0) {
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert('Updation Successfully');");
					pw.println("location='Login2.jsp';");
					pw.println("</script>");
				}
			} else {
				pw.println("<h1> Can't be Updated....</h1>");
				pw.print("<br><a href=\"Login2.jsp\"><button type=\"submit\">Return to Admin Console</button></a>");
			}
			con.close();
			rs.close();
			p1.close();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
