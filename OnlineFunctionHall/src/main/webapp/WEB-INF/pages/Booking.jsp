<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BookingForm</title>
</head>
<body bgcolor="yellow">
    <div align="center">
        <h1>Book Function Hall Portal</h1>
        <form:form action="saveBookingEvent" method="post" modelAttribute="booking">
        <table>
        
            <tr>
                <td colspan="2" align="right">UserName            <form:input path="userName" /></td>
            </tr>
             <tr>
                <td colspan="2" align="right">Type of Hall        <form:input path="hallType" /></td>
            </tr>
            <tr>
                <td colspan="2" align="right">MobileNumber		<form:input path="mobileNumber" /></td>
            </tr>
                 
       <tr>
       <td colspan="2" align="right">Seating Arrangement											<form:select path="seats">  
        <form:option value="Sofaset" label="Sofaset"/>  
        <form:option value="RoundTables" label="RoundTables"/>
          <form:option value="NormalChairs" label="NormalChairs"/>  
        <form:option value="Others" label="Others"/>  
        </form:select></td>
        </tr>
        
        <tr>
        <td colspan="2"  align="right">Seating Guest Capacity 									<form:select path="seatingCapacity">  
        <form:option value="Around 150" label="Around 150"/>  
        <form:option value="150 to 350" label="150 to 350"/>
          <form:option value="Around 500" label="Around 500"/>  
        <form:option value="Above 1000" label="Above 1000"/>  
        </form:select></td>
        </tr>
        
        <tr>
        <td colspan="2"  align="right">Function Hall Name			<form:select path="functionHall">  
        <form:option value="Novotel Hotel" label="Novotel Hotel"/>  
        <form:option value="Rahul Seminar Hall" label="Rahul Seminar Hall"/>  
        <form:option value="Princess" label="Princess"/>
          <form:option value="Celebrations" label="Celebrations"/>  
        <form:option value="Raju Auditorium" label="Raju Auditorium"/>  
        </form:select></td>
        </tr>
           
		<tr>
		<td colspan="2"  align="right">Select Type of Food						<form:select path="food">  
        <form:option value="Veg" label="Veg"/>
          <form:option value="Non Veg" label="Non Veg"/>  
        <form:option value="Chinese" label="Chinese"/>  
        <form:option value="Buffet" label="Buffet"/>  
        </form:select></td> 
        </tr>
               
        <tr>
                <td colspan="2" align="right">BookDate		<form:input path="bookDate" /></td>
            </tr>
            
            <tr>
                <td colspan="2" align="right">ReturnDate		<form:input path="returnDate" /></td>
            </tr>
        
        <tr>
		<td colspan="2"  align="right">Payment Type						<form:select path="payment">  
        <form:option value="Online" label="Online"/>
          <form:option value="Offline" label="Offline"/>  
        </form:select></td> 
        </tr>
        
        
        
        <tr>
                <td colspan="2" align="right">Advance Amount		<form:input path="advance" /></td>
            </tr>
        
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Book Now"></td>
            </tr>
        </table>
        </form:form>
    </div>
    
    <h3>Online Payment : Gpay/PhonePe/Paytm - 98952632 </h3>
    
    <h3>Offline Payment : Make Payment at Function Hall Reception </h3>
</body>
</html>