package roshan;

import jakarta.servlet.ServletException;
import java.io.*;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;

/**
 * Servlet implementation class issue_book_servlet
 */
public class issue_book_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub'
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String book_id=request.getParameter("book_id");
		int sid=Integer.parseInt(request.getParameter("student_id"));
		String student_name=request.getParameter("student_name");
		String date=request.getParameter("date");
		HttpSession session=request.getSession();
		session.setAttribute("id", book_id);
		//String name=request.getParameter("name");
		
		try {
			Connection c=ConnectionProvider.getConnection();
			String q="select * from booklist where Book_ID=? and Status='Not Issued'";
			PreparedStatement ps1=c.prepareStatement(q);
			ps1.setString(1, book_id);
			ResultSet rs=ps1.executeQuery();
			boolean b=rs.next();
			if(b==true) {
			String query="insert into issue(Student_ID,BOOK_ID,Student_Name,Issue_Date)values(?,?,?,?)";
			PreparedStatement ps=c.prepareStatement(query);
			ps.setInt(1, sid);
			ps.setString(2, book_id);
			ps.setString(3, student_name);
			ps.setString(4, date);
			//ps.setString(5, name);
			ps.executeUpdate();
			String q1="update booklist set Status=? where BOOK_ID=?";
			PreparedStatement ps2=c.prepareStatement(q1);
			ps2.setString(1, "issued");
			ps2.setString(2, book_id);
			ps2.executeUpdate();
			out.println("<h2 text-align='center'>Issued Successfully!</h2>");
			out.println();
			response.sendRedirect("./issued_successful.jsp?name="+book_id+"");
			}
			else {
				response.sendRedirect("./issued_error.jsp?");
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
		
	}

}
