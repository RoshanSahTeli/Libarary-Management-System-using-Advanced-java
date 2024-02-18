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
background: rgba(0, 0, 0, 0.5);
width: fit-content;
margin:auto;
border-radius: 10px;
}
table{
padding: 20px 10px 10px 10px;
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
<form action="add_book_servlet" method="post">
	

		<h2 style="color: white; text-align: center;">Book Registration</h2>
		<div class="container">
		<table>
			<tr>
				<td>Book ID</td>
				<td><input type="text" name="book_id"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="book_name"></td>
			</tr>
			<tr>
				<td>Faculty</td>
				<td>
					<select name="faculty" id="faculty">
						<option value="CSIT">CSIT</option>
						<option value="BCA">BCA</option>
						<option value="BIM">BIM</option>
						<option value="BHM">BHM</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Semester</td>
				<td><input type="number" name="semester"></td>
			</tr>
			<tr>
				<td>Publication</td>
				<td><input type="text" name="publication"></td>
			</tr>
			
			<tr>
			<td>Registration Date</td>
			<td><input type="date" name="date"></td>
			</tr>	
			
			
		
		</table>
		<input type="submit" value="Register" style="text-align: center; margin:20px 0px 20px 0px; height: 30px; width: 80px;" class="sub">
		</div>
		
	
</form>
<jsp:include page="footer.html"/>
</div>
</body>
</html>