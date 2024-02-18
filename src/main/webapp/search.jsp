<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%!
	Connection c;
	PreparedStatement ps;
	ResultSet rs;
%>

<%
	
try {
	String id=request.getParameter("search");
	Class.forName("com.mysql.cj.jdbc.Driver");
	c=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","java");
	
	String query="select booklist.Name,booklist.Faculty,booklist.Semester,issue.Student_ID,issue.Student_Name,issue.Issue_Date from booklist inner join issue on booklist.BOOK_ID=issue.BOOK_ID where booklist.BOOK_ID=?";
	ps=c.prepareStatement(query);
	ps.setString(1, id);
	rs=ps.executeQuery();
	while(rs.next()) {
		%>
		<html>
		<head>
		<style>
		table{
		margin: 0 auto;
		}
		
		.container{
		text-align: center;
		margin: 80px;
		}
		
		</style>
		</head>
			<body>
			<jsp:include page="header.html"></jsp:include>
			<div class="container">
				<table>
					<tr>
						<td>Book Name:</td>
						<td><%=rs.getString(1) %></td>
					</tr>
					<tr>
						<td>Faculty:</td>
						<td><%=rs.getString(2) %></td>
					</tr>
					<tr>
						<td>Semester:</td>
						<td><%=rs.getString(3) %></td>
					</tr>
					<tr>
						<td>Student ID:</td>
						<td><%=rs.getString(4) %></td>
					</tr>
					<tr>
						<td>Student Name:</td>
						<td><%=rs.getString(5) %></td>
					</tr>
					<tr>
						<td>Issue Date:</td>
						<td><%=rs.getString(6) %></td>
					</tr>
				</table>
				</div>
			<jsp:include page="footer.html"></jsp:include>
			</body>
		</html>
		<% 
		
		
		
	}
}
catch(Exception e) {
	e.printStackTrace();
	out.println(e.getMessage());
}
%>



