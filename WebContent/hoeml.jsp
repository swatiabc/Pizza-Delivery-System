<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

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

<title>Insert title here</title>
</head>
<body background="media/pizzi.jpg"
background-repeat=no-repeat>
<center>
<h2>
<table style="width:50%">
<tr>
<td><a href="hoeml.jsp" style="color:black" >Home</a></td>
<td><a href="login.jsp" style="color:black">Login</a></td>
</tr>
</table>
</h2>


<div class="relative">
<font size="10" color="red">
<em><b></b></em>
</font>
<p></p><a href="signup.jsp">
<button class="button" ><b>SIGN UP</b></button></a>
<br><br>
<a href="https://www.google.co.in/"><img src="media/feedback.jpg" width="100" height="100" title="give us your feedback"></a>
</div>
<br>
<br>
<div class="relative">
<font size="3" color="black">
<p align="left">
<br><br>
<br>
<br></p>
<video align="right" width="200" controls>
  <source src="media/pizza.mp4" type="video/mp4">
  <source src="media/pizza.ogg" type="video/ogg">
  Your browser does not support HTML5 video.
</video>
<br>


</p>
</font>
</div>
</center>

</body>

</html>