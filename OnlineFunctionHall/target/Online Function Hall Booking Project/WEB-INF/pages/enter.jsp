<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Home page</title>
<style>
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
<body bgcolor="aqua">
<pre><h1><center>Welcome to Online Function Hall Bookings Portal</center></h1>
<center><img src="logo.jpg" border="2" alt="logo"/></center>
<fieldset>
<table border="2" bgcolor="yellow" cellspacing="5" cellpadding="10">
<thead colspan="3"><center><h3>Welcome user! see the booking Status and then Book Accordingly</h3></center></thead>
<tr>
<td><input type="submit" value="Close"><br></td></form>
<form method="post" action="services">
<td><input type="submit" value="Services"><br></td></form>
<form method="post" action="BookFunctionHall">
<td><input type="submit" value="BookOffline"><br></td></form>

<form method="post" action="ListofFunctionHalls">
<td><input type="submit" value="Available function Halls"><br></td></form>

<form method="post" action="AlreadyBookedFunctionHalls">
<td><input type="submit" value="Reception Offline List"><br></td></form>
<form method="post" action="phone">
<td><input type="submit" value="Contact Us"><br></td></form>
</form>
<form method="post" action="home">
<td><input type="submit" value="Logout"><br></td></form>
</tr>


</table><br>

<a href="newBookingEvent" class="register-booking"><input type="submit" value="Book your Function Hall Online"></a><br>

<a href="getbookingDetails" class="booking"><input type="submit" value="Already Booked Function Halls"></a><br>


</fieldset>

</body>
</html>



























