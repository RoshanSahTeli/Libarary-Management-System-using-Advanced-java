package roshan;


import jakarta.servlet.ServletException;
import java.io.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;


/**
 * Servlet implementation class delete
 */
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
			String id=request.getParameter("id");
			Connection con=ConnectionProvider.getConnection();
			String query="update booklist set Status='Not Issued' where Book_ID=?";
			String q="delete from issue where BOOK_ID=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();
			PreparedStatement ps1=con.prepareStatement(q);
			ps1.setString(1, id);
			ps1.executeUpdate();
			response.sendRedirect("./csit_5.jsp");
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
	}

}
