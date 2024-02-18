<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table style="width: 100%;">
	<tr>
		<td>
		<jsp:include page="header.html" flush="true"/>
		</td>
	</tr>
	<tr>
		<td>
		<jsp:include page="Success.jsp" flush="true"/>
		</td>
	</tr>
	<tr>
	<td>
	<jsp:include page="library_front.html" flush="true"></jsp:include>
	</td>
	</tr>
	<tr>
		<td>
		<jsp:include page="footer.html" flush="true"/>
		</td>
	</tr>
</table>
</body>
</html>