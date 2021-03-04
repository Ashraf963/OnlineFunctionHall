<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Online Function Hall Booking</title>
<style>
body {
  background-color: yellow;
}

h1 {
font-family: verdana;
  font-size: 20px;
  color: black;
  text-align: center;
  border: 1px solid black;
  padding:10px;
 background-color: lightblue;
}

}
</style>
</head>
<body>
	<pre>                       
	
<h1>Welcome to Online function hall booking system</h1>
			
	<b/><marquee>Welcome to Online function hall booking system</marquee>
 <form:form action="homelogin" method="post" modelAttribute="student">   
<b/>UserName: <input type="text" name="uname" placeholder="Enter Username" required><br>							
</b>Password: <input type="password" name="pwd" placeholder="Enter password" required><br>
<input type="submit" value="Login"><br>	 
</form:form>		 
<h3>New user ??<a href="newStudent">click here to register</a></h3>	
	</pre>
</body>
</html>