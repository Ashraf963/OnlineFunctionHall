<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registered Users Screen</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body style="background-color:lightblue;">

	
	<div align="center">
		<h1>Registered Users</h1>
		
		<table border="1">

			<th>Name</th>
			<th>Email</th>
			<th>address</th>
			<th>Mobile Number</th>
			<th>UserName</th>
			<th>Password</th>
			
			
			<c:forEach var="student" items="${student}">
				<tr>

					<td>${student.name}</td>
					<td>${student.email}</td>
					<td>${student.address}</td>
					<td>${student.mobile}</td>
					<td>${student.uname}</td>
					<td>${student.pwd}</td>

				</tr>
			</c:forEach>
		</table>
		</div>
		
		<form method="post" action="home">

<input type="submit" value="Go Back to Login Page">
</body>
</html>