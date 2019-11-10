<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
<style>
div.relative {
  position: relative;
  left: 400px;
  top:100px;
}

.button {
  border-radius: 12px;
  background-color: white;
  border: 2px solid black;
  color: black;
  padding: 15px 25px;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
}

table, th, td {
  border-collapse: collapse;
}

</style>

</style>
<title>order pizza</title>
</head>
<body background="order.jpg">
<center>

<center>
<h2>
<table style="width:50%">
<tr>
<td><a href="home.jsp" style="color:black" >Home</a></td>
<td><a href="menu.jsp" style="color:black">Menu</a></td>
<td><a href="login.html" style="color:black">Login</a></td>
<td><a href="cart.jsp" style="color:black">Cart</a></td>
<td><a href="https://www.google.co.in/" style="color:black">Discounts</a></td>
<td><a href="contact.jsp"style="color:black">Contact us</a></td>
</tr>
</table>
</h2>

	<h2>
<div class="relative">
<form action="menu.html"autocomplete>
  Postal Code:<br><br>
  <input type="text" name="Postal_Code" placeholder="eg: 400077" required>
  <br><br>  
  Street number:<br><br>
  <input type="text" name="Street number" placeholder="eg: 100 main street"required>
  <br><br>
  City:<br><br>
  <input list="City" name="City"required>
  <datalist id="City">
  	<option value="Mumbai">
  	<option value="Pune">
  	<option value="Delhi">
  	<option value="Bangalore">
  </datalist>

  <br><br>
  Building Name, Flat number:<br><br>
  <input type="text" name="Building Name,etc " placeholder ="Building Name,etc "required>
  <br><br>
  Landmark:<br><br>
  <input type="text" name="Landmark" placeholder ="Landmark"><br><br>
  <textarea rows="4" cols="50"input type="text" name="Alternate address " placeholder ="Alternate address"required >
</textarea>
  <br><br>

  <input type="submit" value="Submit">
  
</form>
</h2>
</div>
</center>
</body>
</html>

