<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Booking page</title>
<style>
body {
  background-color: orange;
}

h1 {
font-family: verdana;
  font-size: 20px;
  color: black;
  text-align: center;
  border: 1px solid black;
  padding:10px;
 background-color: aqua;
}

}
</style>
</head>
<body>
<pre>  			<h1>Book Your Function Hall Now</h1>

<form method="post" action="enter">

<fieldset>
<pre><label>Function Hall Name         </label><input type="text" name="fname" tabindex="1" placeholder="Enter Hall name" required/><br>

<label>Function Hall Type        </label><input type="text" name="type" tabindex="2" placeholder="Enter Hall Type" required/><br>
 
<label>Booking Date         </label><input type="date" name="date" tabindex="3" placeholder="Enter Date" required/><br>

<label>Seating Capacity             </label><input name="seat" type="radio" tabindex="4" required/> Less than 500 <input name="seat" type="radio" tabindex="5" /required>Greater than 500 <br>


<label>Seating Arrangement Type          </label><input name="seating" type="radio" tabindex="6" required/>SofaSet <input name="seating" type="radio" tabindex="7"/>Chairs <input name="seating" type="radio" tabindex="8"/> Round Table<br> 

<label>Return Date           </label><input type="date" name="rdate" tabindex="8" placeholder="Enter Return Date" required/><br>

<label>Other Requirements   </label><input type="text" name="req" tabindex="9" placeholder="Enter Requirements" required/><br>

<label>Address for collecting payment           </label><textarea  tabindex="10" placeholder="Enter Address" required></textarea><br>

<label>Type of Food           </label> <select>
<option>Veg</option>
<option>Non-Veg</option>
<option>Chinese</option>
<option>Italian</option>
<option>Others..</option>
</select><br>

<input type="submit" value="Book Now">    <input type="Reset"><br>
</fieldset><br>

</form>
</body>
</html>


