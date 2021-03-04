<%@page contentType="text/html" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booked Hall Screen</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
</head>
<body style="background-color:pink;">

	
	<div align="center">
		<h1>Booked Function Halls</h1>
		
		<table border="1">

			<th>userName</th>
			<th>Hall Type</th>
			<th>Mobile Number</th>
			<th>Seat Arrangement</th>
			<th>Seating Capacity</th>
			<th>Function Hall Name</th>
			<th>food</th>
			<th>BookDate</th>
			<th>Return Date</th>
			<th>Payment</th>
			<th>Advance Amount</th>
			
			<c:forEach var="booking" items="${booking}">
				<tr>

					<td>${booking.userName}</td>
					<td>${booking.hallType}</td>
					<td>${booking.mobileNumber}</td>
					<td>${booking.seats}</td>
					<td>${booking.seatingCapacity}</td>
					<td>${booking.functionHall}</td>
					<td>${booking.food}</td>
					<td>${booking.bookDate}</td>
					<td>${booking.returnDate}</td>
					<td>${booking.payment}</td>
					<td>${booking.advance}</td>
					
					
				</tr>
			</c:forEach>
		</table>
		</div>

		<form method="post" action="enter">
		<input type="submit" value="Go Back to Dashboard">
		</form>
		
</body>
</html>