<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Here</title>
<style>
body {
  background-color: lightGreen;
}

h1 {
font-family: verdana;
  font-size: 20px;
  color: black;
  text-align: center;
  border: 1px solid black;
  padding:10px;
 background-color: yellow;
}

}
</style>
</head>
<body>
    <div align="center">
        <h1>Online Function Hall Booking Registration</h1>
        <form:form action="saveStudent" method="post" modelAttribute="student">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>Name:</td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><form:input path="address" /></td>
            </tr>
            <tr>
                <td>Mobile:</td>
                <td><form:input path="mobile" /></td>
            </tr>
            <tr>
                <td>User Name:</td>
                <td><form:input path="uname" /></td>
            </tr><tr>
                <td>Password:</td>
                <td><form:input path="pwd" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Register"></td>
            </tr>
        </table>
        </form:form>
    </div>
</body>
</html>