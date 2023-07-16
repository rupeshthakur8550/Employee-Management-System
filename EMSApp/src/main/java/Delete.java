
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

public class Delete extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String s1 = request.getParameter("id");
		Connection con = null;
		try {
			PrintWriter pw = response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "Rupesh#1");
			PreparedStatement pst;
			// Insertion of elements
			pst = con.prepareStatement("delete from employee where id=?");
			pst.setString(1, s1);
			int i = pst.executeUpdate();
			if (i > 0) {
				pw.println("<script type=\"text/javascript\">");
				pw.println("alert('Deletion Successfully');");
				pw.println("location='index.jsp';");
				pw.println("</script>");
			} else {
				pw.println("<h1> Employee For inputed ID doesn't Exist .......</h1>");
				pw.print("<br><a href=\"index.jsp\"><button type=\"submit\">Return to Admin Console</button></a>");
			}
			con.close();
			pst.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
