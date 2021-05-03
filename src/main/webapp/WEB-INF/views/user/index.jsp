<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${pageContext.request.contextPath}/user/add">Add new user</a>
	<table border="1">
		<tr>
			<td>UserID</td>
			<td>Username</td>
			<td>Password</td>
			<td>Option</td>
		</tr>
		<c:forEach var = "user" items="${user}">	
		<tr>
			<td>${user.id}</td>
			<td>${user.username}</td>
			<td>${user.password}</td>	
			<td>
				<a href="${pageContext.request.contextPath}/user/edit/${user.id}">Edit</a>|
				<a href="${pageContext.request.contextPath}/user/delete/${user.id}">Delete</a>
			</td>	
		</tr>	
		</c:forEach>
	</table>
</body>
</html>