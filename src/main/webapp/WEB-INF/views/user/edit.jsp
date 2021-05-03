<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Add New Depart</h3>
	<s:form method="POST" modelAttribute="user" action="${pageContext.request.contextPath}/user/add">
		<table>
			 <tr>
				<td>id</td>
				<td>
					<s:input path="id"/>
				</td>
			</tr> 
			<tr>
				<td>Username</td>
				<td>
					<s:input path="username"/>
				</td>
			</tr>
			<tr>
				<td>Password</td>
				<td>
					<s:input path="password"/>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					<input type="submit" value="Save"/>
					<s:hidden path="id"/>
				</td>
			</tr>
		</table>
	</s:form>
</body>
</html>