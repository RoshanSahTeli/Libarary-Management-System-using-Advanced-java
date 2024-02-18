package roshan;

import jakarta.servlet.ServletException;
import java.io.*;
import java.sql.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class add_book_servlet
 */
public class add_book_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String bookid=request.getParameter("book_id");
		String book_name=request.getParameter("book_name");
		String faculty=request.getParameter("faculty");
		int semester=Integer.parseInt(request.getParameter("semester"));
		String publication=request.getParameter("publication");
		String date=request.getParameter("date");
		try {
			Connection c=ConnectionProvider.getConnection();
			String query="insert into booklist(Book_ID,Name,Faculty,Semester,Publication,Entry_Date,Status) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=c.prepareStatement(query);
			ps.setString(1, bookid);
			ps.setString(2,book_name);
			ps.setString(3, faculty);
			ps.setInt(4, semester);
			ps.setString(5, publication);
			ps.setString(6, date);
			ps.setString(7, "Not Issued");
			ps.executeUpdate();
			}
		catch(Exception e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
		
		// TODO Auto-generated method stub
	}

}
