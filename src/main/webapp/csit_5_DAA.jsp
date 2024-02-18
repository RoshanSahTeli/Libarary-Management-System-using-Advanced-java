<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.jdbc.Driver"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	Connection con;
	PreparedStatement ps,ps1;
	ResultSet rs,rs1;
	
%>
<%
	String subject=request.getParameter("name");
	//String subject=(String)session.getAttribute("subject");
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","java");
	String query="select count(*) as 'count' from booklist where Status='Not Issued' and Name=?";
	ps=con.prepareStatement(query);
	ps.setString(1, subject);
	
	
	 rs=ps.executeQuery();
	 String q="select count(*) as 'count1' from booklist where Status='issued' and Name=?";
	 ps1=con.prepareStatement(q);
	 ps1.setString(1, subject);
	 
	 rs1=ps1.executeQuery();
	if(rs.next()) {
		int present_count=rs.getInt("count");
		%>
		<html>
		<body>
		<head>
		<style>
		.container{
		display: flex;
    	justify-content: center;
    	align-items: center;
		}
		.container a{
		text-decoration: none;
		background-color: green;
		color: white;
		padding: 10px;
		border-radius: 10px;
		}
		.container a:hover {
		background-color: black;
}

.container2{
		display: flex;
    	justify-content: center;
    	align-items: center;
    	margin: 10px;
		}
		.container2 a{
		text-decoration: none;
		background-color: red;
		color: white;
		padding: 10px;
		border-radius: 10px;
		}
		.container2 a:hover {
		background-color: black;
}
		.main-container{
		height: 395px;
		}
		</style>
		
		</head>
		<jsp:include page="header.html"></jsp:include>
		<div class="main-container">
		<h2 style="text-align: center; color: green; padding-top: 60px;">Available Books Count : <%=present_count %></h2>
		<div class="container">
		<a href="./available_booklist.jsp?name=<%= subject %>" style="text-align: center;">View Details</a><br>
		</div><br><br>
		<%
	}
	if(rs1.next()){
		int issue_count=rs1.getInt("count1");
		
		%>
		<h2 style="text-align: center;color: red;">Issued Books Count : <%=issue_count %></h2>
		<div class="container2">
		<a href="./issued_booklist.jsp?name=<%=subject %>" style="text-align: center;">View Details</a>
		</div>
		</div>
		<jsp:include page="footer.html"/>
		</body>
		</html>
		<%
	
	}
		
	
	
%>

