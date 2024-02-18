<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container{
display: flex;
justify-content: center;
align-items: center;
height: 415px;

}
</style>
</head>
<%
String id=request.getParameter("name");
%>
<body>
<jsp:include page="header.html"/>
<div class="container">
	<h2 style="text-align: center; color: green;">BOOK_ID='<%=id %>'<br>Issued Successfully</h2>
</div>
<jsp:include page="footer.html"/>
</body>
</html>