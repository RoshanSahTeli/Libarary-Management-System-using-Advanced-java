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
	String query="select * from booklist where Status='Not Issued' and Name=?";
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
				<td>Faculty</td>
				<td>Semester</td>
				<td>Publication</td>
				<td>Entry Date</td>
				<td>Status</td>
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
			</tr>
			<%}
						
			
			
	%>
			</table>
			<%
			if(rs.next())
			%>
			</div>
			<jsp:include page="footer.html"/>
			
		</body>
		
		</html>
		
		

	

