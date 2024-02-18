<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error!</title>
<style>
.container{
display: flex;
justify-content: center;
align-items: center;
height: 415px;
}
</style>

</head>
<body>
<jsp:include page="header.html"/>
<div class="container">
	<h2 style="text-align: center;color: red;">Sorry!<br>No Books Available</h2>
</div>
<jsp:include page="footer.html"/>
</body>
</html>