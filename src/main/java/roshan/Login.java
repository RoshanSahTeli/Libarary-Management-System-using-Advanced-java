package roshan;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import java.io.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;




public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String name=request.getParameter("username");
		String password=request.getParameter("password");
		ServletContext application=getServletContext();
		application.setAttribute("name",name);
		
		try {
			Connection c=ConnectionProvider.getConnection();
			PreparedStatement ps=c.prepareStatement("select * from login where Username=? and Password=?");
			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			boolean b=rs.next();
			RequestDispatcher rd=null;
			if(b==true) {
				rd=request.getRequestDispatcher("/Login_home.jsp");
				rd.forward(request, response);
			}
			else {
				rd=request.getRequestDispatcher("/Failure.jsp");
				rd.forward(request, response);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
		
	}

}
