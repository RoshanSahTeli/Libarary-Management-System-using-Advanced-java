<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
Connection con;
PreparedStatement ps;
ResultSet rs;
%>    
<%
	String subject=request.getParameter("name");
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","java");
	String query="select booklist.Book_ID,booklist.Name,issue.Student_Name,booklist.Faculty,booklist.Semester,issue.Issue_Date,booklist.Status from booklist inner join issue on booklist.BOOK_ID=issue.BOOK_ID where booklist.Name=? and booklist.Status='issued'";
	ps=con.prepareStatement(query);
	ps.setString(1, subject);
	
	rs=ps.executeQuery();
	
		%>
		<html>
		<head>
		<style>
		table{
		margin: auto;
		}
		.container{
		display:flex;
		justify-content:center;
		align-items:center;
		height: 415px;
		}
		</style>
		</head>
		<body>
		<jsp:include page="header.html"/>
		<div class="container">
			<table border="1px;">
			<tr>
				<td>BOOK ID</td>
				<td>Book Name</td>
				<td>Student Name</td>
				<td>Faculty</td>
				<td>Semester</td>
				<td>Issue Date</td>
				<td>Status</td>
				<td>Delete</td>
			</tr><%
			while(rs.next()){%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(7) %></td>
				<td>
				<a href="/Library/delete?id=<%=rs.getString("Book_ID")%>">delete</a>
				</td>
			</tr>
			<%}
			%>
			</table>
			</div>
			<jsp:include page="footer.html"/>
		</body>
		
		</html>
		

	

