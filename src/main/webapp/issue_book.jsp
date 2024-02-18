<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	input {
	margin: 5px;
	height: 20px;
	border-radius: 5px;
}
select{
margin: 10px;
border-radius: 5px;
height: 30px;`
}
body{
margin: 0%;

}
.container{
display: flex;
justify-content:center;
align-items:center;

width: fit-content;
margin: auto;
border-radius: 10px;
height: 345px;
}
table{
padding: 50px 30px 50px 30px;
background: rgba(0, 0, 0, 0.5);
border-radius: 15px;
}
.sub:hover {
	color: white;
	background-color: green;
}
td{
color: white;
font-weight: bold;
}
</style>
</head>
<body>
<div style="background-image: url('./back.jpg');">
<jsp:include page="header.html"/>
<form action="issue_book_servlet" method="post" >

	
		<h2 style="color: white; text-align: center;">Book Registration</h2>
		<div class="container">
		<table>
			<tr>
				<td>Book ID</td>
				<td><input type="text" name="book_id"></td>
			</tr>
			<tr>
				<td>Student ID</td>
				<td><input type="number" name="student_id"></td>
			</tr>
			<tr>
				<td>Student_Name</td>
				<td><input type="text" name="student_name"></td>
			</tr>
			
			<tr>
			<td>Issue Date</td>
			<td><input type="date" name="date"></td>
			</tr>
			
			<tr>
			<td><input type="submit" value="Issue" style="margin:20px 0px 20px 0px; height: 30px; width: 80px;" class="sub"></td>
			</tr>	
		</table>
		
		</div>
		

</form>
<jsp:include page="footer.html"/>
</div>
</body>
</html>